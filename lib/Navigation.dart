import 'package:flutter/material.dart';
import 'package:what_to_do_app/Screens/AddTaskScreen.dart';




Route createRoute(dynamic navigation) {
  
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation)=>AddTaskScreen(),
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
