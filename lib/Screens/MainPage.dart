import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _num = 0;

  void _buttonAddClick() {
    setState(() {
      //Do Something when button on clicked
      _num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _buttonAddClick,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue,
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Container(
                  padding: EdgeInsets.only(left: 50),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.list_rounded,
                      color: Colors.white,
                      size: 75,
                    ),
                    radius: 50,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "What To Do! $_num",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                height: 473,
                margin: EdgeInsets.only(top: 25),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
