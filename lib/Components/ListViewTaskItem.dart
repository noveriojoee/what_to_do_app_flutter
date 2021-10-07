import 'package:flutter/material.dart';

class ListViewTaskItem extends StatelessWidget {
  bool _isChecked;
  String _taskTitle;
	Function checkboxCallback;

	ListViewTaskItem(this._isChecked,this._taskTitle, this.checkboxCallback);

//  void onCheckboxChange(newValue) {
//    setState(() {
//      _isChecked = newValue;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
				_taskTitle,
        style: TextStyle(
            decoration: _isChecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: _isChecked,
        onChanged: checkboxCallback,
        //onChanged: (newValue) => onCheckboxChange(newValue),
      ),
    );
  }
}

//There are sample for callback here..
//class TaskCheckBox extends StatelessWidget {
//	final bool isChecked;
//
//	//This is awesome, we can pass in method or function as variable, instead of creating interface or protocol in ios
//	final Function checkboxCallback;
//
//	//What is this? constructor or what?
//	TaskCheckBox(this.isChecked, this.checkboxCallback);
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(onChanged:checkboxCallback, value: isChecked,);
//  }
//}
