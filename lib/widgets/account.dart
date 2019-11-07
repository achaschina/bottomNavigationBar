import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final Color _bgColor;

  Account(this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgColor,
      child: Center(
        child: Text('Its Account page.'),
      ),
    );
  }
}
