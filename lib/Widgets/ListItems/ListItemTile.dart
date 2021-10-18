import 'package:flutter/material.dart';

class ListItemTile extends StatelessWidget {
  bool _isCheck = false;
  String _text = '';
  Function _onListChecked;
  ListItemTile(
      {Key? key,required bool isCheck,
      required String text,
      required Function onListChecked})
      : _isCheck = isCheck,
        _text = text,
        _onListChecked = onListChecked,
        super(key: key);

  void toogleCheck(){
    _isCheck = !_isCheck;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: Text(
          _text,
          style: TextStyle(
              decoration:
                  _isCheck ? TextDecoration.lineThrough : TextDecoration.none),
        ),
      ),
      trailing: Checkbox(
        value: _isCheck,
        onChanged: (value) {
          _isCheck = !_isCheck;
          _onListChecked(_isCheck);
        },
      ),
    );
  }
}
