import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final Color _bgColor;

  Comment(this._bgColor);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgColor,
      child: Center(
        child: Text('Add new comment.'),
      ),
    );
  }
}


