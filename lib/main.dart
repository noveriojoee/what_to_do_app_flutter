import 'package:flutter/material.dart';
import 'package:what_to_do_app/Screens/main_screen.dart';


import 'Setup.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen(),);
  }
}

