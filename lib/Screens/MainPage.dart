import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:what_to_do_app/Screens/TaskScreen.dart';

class MainPage extends StatefulWidget {
	_MainPageState createState() => _MainPageState();
}

Route _createRoute() {
	return PageRouteBuilder(
		pageBuilder: (context, animation, secondaryAnimation) => TaskScreen(),
		transitionsBuilder: (context, animation, secondaryAnimation, child) {
			const begin = Offset(0.0, 1.0);
			const end = Offset.zero;
			final tween = Tween(begin: begin, end: end);
			final offsetAnimation = animation.drive(tween);

			return SlideTransition(
				position: offsetAnimation,
				child: child,
			);
		},
	);
}


class _MainPageState extends State<MainPage> {
  int _num = 0;

  void _buttonAddClick(BuildContext context) {
    setState(() {
      //Do Something when button on clicked
			Navigator.of(context).push(_createRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
					setState(() {
						//Do Something when button on clicked
						Navigator.of(context).push(_createRoute());
					});
				},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
					color: Colors.lightBlue,
          child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
								margin: EdgeInsets.only(top:50, left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Container(
                        child: CircleAvatar(
                          child: Icon(
                            Icons.list_rounded,
                            color: Colors.white,
                            size: 75,
                          ),
                          radius: 50,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "What To Do! $_num",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
						Container(
							height:473,
							margin: EdgeInsets.only(top: 25),
							color: Colors.green,
						)],
          ),
        ),
      ),
    );
  }
}
