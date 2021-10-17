import 'package:flutter/material.dart';
import 'package:what_to_do_app/Widgets/AppBar/AppBarWidget.dart';
import 'package:what_to_do_app/Widgets/ListItems/ListItemTile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isCheck = false;
  void showMessage(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showMessage(context);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          BaseAppBarWidget(),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListItemTile(isCheck: false, text: 'xx');
              },
            ),
          )),
        ],
      )),
    );
  }
}


