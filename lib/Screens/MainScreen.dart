import 'package:flutter/material.dart';
import 'package:what_to_do_app/Widgets/AppBar/AppBarWidget.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          BaseAppBarWidget()  
        ],)),
      );
  }
}