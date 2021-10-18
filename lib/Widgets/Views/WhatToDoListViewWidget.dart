import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do_app/Data/TaskData.dart';
import 'package:what_to_do_app/Widgets/ListItems/ListItemTile.dart';

class WhatToDoListViewWidget extends StatelessWidget {
  const WhatToDoListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: Provider.of<TaskData>(context).models!.length,
        itemBuilder: (context, index) {
          return ListItemTile(
            isCheck: taskData.models![index].isDone,
            text: taskData.models![index].taskTitle,
            onListChecked: (value) {
              taskData.toogleDone(index);
              taskData.removeData(index);
            },
          );
        },
      );
    });
  }
}
