import 'package:flutter/material.dart';

class ListViewTaskItem extends StatefulWidget {
  @override
  State<ListViewTaskItem> createState() => _ListViewTaskItemState();
}

class _ListViewTaskItemState extends State<ListViewTaskItem> {
	bool _isChecked = false;

	void onCheckboxChange(newValue) {
		setState(() {
			_isChecked = newValue;
		});
	}

	@override
	Widget build(BuildContext context) {
		return ListTile(title: Text("this is the task", style: TextStyle(
			decoration: _isChecked == true ? TextDecoration.lineThrough : null
		),), trailing: TaskCheckBox(_isChecked,onCheckboxChange),);
	}
}

class TaskCheckBox extends StatelessWidget {
	final bool isChecked;

	//This is awesome, we can pass in method or function as variable, instead of creating interface or protocol in ios
	final Function(bool?)? checkboxCallback;

	//What is this? constructor or what?
	TaskCheckBox(this.isChecked, this.checkboxCallback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(onChanged:checkboxCallback, value: isChecked,);
  }
}
