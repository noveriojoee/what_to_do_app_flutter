import 'package:flutter/material.dart';
import 'package:what_to_do_app/Components/ListViewTaskItem.dart';
import 'package:what_to_do_app/Models/TaskModel.dart';

class ListViewWidget extends StatefulWidget {
	List<TaskModel> models;

	ListViewWidget(this.models);

  @override
  State<ListViewWidget> createState() {
  	return _ListViewWidgetState();
	}
}

class _ListViewWidgetState extends State<ListViewWidget> {
  void onTaskChecked(TaskModel model, bool newValue) {
    setState(() {
      model.toogleIsDone();
    });
  }

  @override
  Widget build(BuildContext context) {
    //Instead of doing this, we can doing this using liewViewBuilder
//    return ListView(
//      children: <Widget>[
//        ListViewTaskItem(models[0].isDone, models[0].taskDescription, (newValue) => onTaskChecked(models[0],newValue)),
//        ListViewTaskItem(models[1].isDone, models[1].taskDescription, (newValue) => onTaskChecked(models[1],newValue)),
//        ListViewTaskItem(models[2].isDone, models[2].taskDescription, (newValue) => onTaskChecked(models[2],newValue))
//      ],
//    );

    return ListView.builder(
			itemBuilder: (context, index) {
				return ListViewTaskItem(
          widget.models[index].isDone,
					widget.models[index].taskDescription,
          (newValue) => onTaskChecked(widget.models[index], newValue));
    },
		itemCount: widget.models.length,);
  }
}
