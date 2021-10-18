import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do_app/Data/TaskData.dart';

class BaseAppBarWidget extends StatelessWidget {
  BaseAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 280,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20,left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 100,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('What To Do ?',style: TextStyle(fontSize: 30),),
              SizedBox(height: 5,),
              Text('Remaining Task ${Provider.of<TaskData>(context).models!.length}',style: TextStyle(fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
}
