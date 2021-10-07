import 'package:flutter/material.dart';
import 'package:what_to_do_app/Screens/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage(),);
  }
}

