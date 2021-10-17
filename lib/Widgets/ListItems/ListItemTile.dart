import 'package:flutter/material.dart';

class ListItemTile extends StatefulWidget {
  bool _isCheck;
  String _text;
  ListItemTile({
    Key? key,
    required bool isCheck,
    required String text,
  })  : _isCheck = isCheck,
        _text = text,
        super(key: key);
  @override
  State<ListItemTile> createState() => _ListItemTileState();
}

class _ListItemTileState extends State<ListItemTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: Text(
          widget._text,
          style: TextStyle(
              decoration: widget._isCheck
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          setState(() {
            widget._isCheck = !widget._isCheck;
          });
        },
      ),
    );
  }
}
