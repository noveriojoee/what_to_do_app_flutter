import 'package:flutter/material.dart';
import 'package:what_to_do_app/Components/ListViewTaskItem.dart';


class ListViewWidget extends StatelessWidget {

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
