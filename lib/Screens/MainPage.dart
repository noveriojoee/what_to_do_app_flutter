import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:what_to_do_app/Components/ListViewWidget.dart';
import 'package:what_to_do_app/Screens/PopUp/AddTaskScreen.dart';
import 'package:what_to_do_app/Models/TaskModel.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key key,
  }) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _num = 0;
  List<TaskModel> models = [
    TaskModel("Buying bread", false),
    TaskModel("Buying papper", false),
    TaskModel("Buying ciggrate", false)
  ];

  void _buttonAddClick(BuildContext context) {
    //Do Something when button on clicked
//      Navigator.of(context).push(createRoute('addTask'));

    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
          builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen((context, taskString) {
                    	setState(() {
                    		Navigator.pop(context);
                    		models.add(TaskModel(taskString, false));
                    		_num = models.length;
                    	});
                    }))
        ));
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
                  child: ListViewWidget(models),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
