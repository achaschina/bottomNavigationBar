import 'package:flutter/material.dart';

import './widgets/account.dart';
import './widgets/add_Comment.dart';
import './widgets/messages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Account(Colors.lime[100]),
    Comment(Colors.amber[100]),
    Messages(Colors.pink[50]),
  ];

  void _bottomNavigationTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Icon(Icons.all_inclusive),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purpleAccent,
        selectedItemColor: Colors.white,
        onTap: _bottomNavigationTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: Text('Account')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.add_comment), title: Text('Add comment')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.mail), title: Text('Messages')),
        ],
      ),
    );
  }
}
