import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CircleAvatar(
            child: Icon(Icons.list_rounded),
            backgroundColor: Colors.white,
          ),
          padding: EdgeInsets.all(150),
        ),
      ],
    );
  }
}
