import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final Color _bgColor;

  Messages(this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgColor,
      child: Center(
        child: Text('List of messages.'),
      ),
    );
  }
}
