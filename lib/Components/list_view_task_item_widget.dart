import 'package:flutter/material.dart';
import 'package:what_to_do_app/Models/task_model.dart';

class ListViewTaskItem extends StatefulWidget {
  final TaskModel data;

  const ListViewTaskItem({Key? key, required this.data}) : super(key: key);

  @override
  State<ListViewTaskItem> createState() => _ListViewTaskItemState();
}

class _ListViewTaskItemState extends State<ListViewTaskItem> {
  bool _isChecked = false;

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _isChecked = widget.data.isDone;
  }

  void onCheckboxChange(newValue) {
    setState(() {
      _isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.data.description,
        style: TextStyle(
            decoration: _isChecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(_isChecked, onCheckboxChange),
    );
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
    return Checkbox(
      onChanged: checkboxCallback,
      value: isChecked,
    );
  }
}
