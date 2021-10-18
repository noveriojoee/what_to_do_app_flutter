import 'package:flutter/material.dart';
import 'package:what_to_do_app/Models/TaskItemModel.dart';
import 'package:what_to_do_app/Screens/AddTaskScreen.dart';
import 'package:what_to_do_app/Widgets/AppBar/AppBarWidget.dart';
import 'package:what_to_do_app/Widgets/ListItems/ListItemTile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<TaskItemModel>? models;

  _MainScreenState({this.models}) {
    models = [TaskItemModel('taskTitle', 'taskDescription', false)];
  }

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

  // void showAddTaskScreen(BuildContext context, String detailScreen) {
  //   if (detailScreen == 'bottom') {
  //     showModalBottomSheet<void>(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AddTaskScreen();
  //       },
  //     );
  //   } else {
  //     Navigator.push(context, gotoThirdPage());
  //   }
  // }

  Route gotToAddTaskScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          AddTaskScreen('_taskTitle', 'xx'),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final model = await Navigator.push(context, gotToAddTaskScreen());
          setState(() {
            if (model != null) models!.add((model as TaskItemModel));
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
              itemCount: this.models!.length,
              itemBuilder: (context, index) {
                return ListItemTile(
                  isCheck: this.models![index].isDone,
                  text: this.models![index].taskTitle,
                  onListChecked: (value) {
                    setState(() {
                      this.models![index].isDone = !this.models![index].isDone;
                    });
                  },
                );
              },
            ),
          )),
        ],
      )),
    );
  }
}
