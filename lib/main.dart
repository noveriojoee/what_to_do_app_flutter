import 'package:flutter/material.dart';
import 'package:what_to_do_app/Widgets/AppBar/AppBarWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            BaseAppBarWidget(),
          ],
        ),
      ),
    );
  }
}
