import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Text("what to do app $num"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            num++;
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
