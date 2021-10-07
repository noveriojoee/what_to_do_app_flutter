import 'package:flutter/material.dart';
import 'package:what_to_do_app/Components/ListViewTaskItem.dart';
import 'package:what_to_do_app/Models/TaskModel.dart';

class ListViewWidget extends StatefulWidget {

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
	List<TaskModel> models = [
		TaskModel("xxx", false),
		TaskModel("xxx", false),
		TaskModel("xxx", false),
		TaskModel("xxx", false)
	];

	@override
	Widget build(BuildContext context) {
		return ListView(
			children: <Widget>[
				ListViewTaskItem(),
				ListViewTaskItem(),
				ListViewTaskItem()
			],
		);
	}
}
