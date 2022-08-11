import 'package:flutter/material.dart';
import 'package:what_to_do_app/Base/base_view.dart';
import 'package:what_to_do_app/Components/list_view_task_item_widget.dart';
import 'package:what_to_do_app/Screens/PopUp/add_task_widget.dart';
import 'package:what_to_do_app/ViewModels/main_screen_view_model.dart';

class MainScreen extends BaseView<MainScreenViewModel> {
  @override
  Widget build(
      BuildContext context, MainScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(onAddTaskClicked: viewModel.onAddTaskClicked,)),
                  ));
        },
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
                        "What To Do!",
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
                  child: ListView.builder(
                    itemCount: viewModel.taskDataCount,
                    itemBuilder: (context, index) {
                      return ListViewTaskItem(data: viewModel.taskData[index]);
                  },),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
