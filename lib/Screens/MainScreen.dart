import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do_app/Data/TaskData.dart';
import 'package:what_to_do_app/Screens/AddTaskScreen.dart';
import 'package:what_to_do_app/Widgets/AppBar/AppBarWidget.dart';
import 'package:what_to_do_app/Widgets/ListItems/ListItemTile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
      pageBuilder: (context, animation, secondaryAnimation) => AddTaskScreen(),
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
          if (model != null) 
            Provider.of<TaskData>(context, listen: false).addData(model);
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
              itemCount: Provider.of<TaskData>(context).models!.length,
              itemBuilder: (context, index) {
                return ListItemTile(
                  isCheck: Provider.of<TaskData>(context).models![index].isDone,
                  text: Provider.of<TaskData>(context).models![index].taskTitle,
                  onListChecked: (value) {
                    Provider.of<TaskData>(context).models![index].isDone =
                        !Provider.of<TaskData>(context).models![index].isDone;
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
