import 'package:flutter/material.dart';

class ListViewTaskItem extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ListTile(title: Text("this is the task"), trailing: Checkbox(value: false,),);
	}
}
