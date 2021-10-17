import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BaseAppBarWidget extends StatelessWidget {
  BaseAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.list,
                  color: Colors.lightBlue,
                  size: 50,
                ),
              ),
            ),
            Text('What To Do ?')
          ],
        ),
      ),
    );
  }
}