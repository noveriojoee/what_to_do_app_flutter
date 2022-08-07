import 'package:flutter/material.dart';
import 'package:what_to_do_app/Components/ListViewWidget.dart';
import 'package:what_to_do_app/Screens/PopUp/AddTaskScreen.dart';


class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _num = 0;

  void _buttonAddClick(BuildContext context) {
    setState(() {
      //Do Something when button on clicked
//      Navigator.of(context).push(createRoute('addTask'));
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => SingleChildScrollView(
						child: Container(padding : EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),child: AddTaskScreen()),
					));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buttonAddClick(context),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.only(top: 50, left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Container(
                        child: CircleAvatar(
                          child: Icon(
                            Icons.list_rounded,
                            color: Colors.lightBlue,
                            size: 75,
                          ),
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "What To Do! $_num",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  margin: EdgeInsets.only(top: 25),
                  child: ListViewWidget(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
