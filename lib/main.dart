import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do_app/Data/TaskData.dart';
import 'package:what_to_do_app/Screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
    // return ChangeNotifierProvider(
    //   builder: (context) {
    //     return MaterialApp(
    //       home: MainScreen(),
    //       );
    //   }
    // );
  }
}
