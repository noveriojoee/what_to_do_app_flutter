import 'package:flutter/material.dart';
import 'package:what_to_do_app/Base/BaseView.dart';
import 'package:what_to_do_app/ViewModels/MusicPlayerScreenViewModel.dart';

class MainScreen extends BaseView<MusicPlayerScreenViewModel> {
  void temp(){
    
  }
  @override
  Widget build(BuildContext context, MusicPlayerScreenViewModel viewModel,
      Widget? child) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: (){
            
          }),
      appBar: AppBar(title: Text('Music App')),
      body: Column(
        children: [Text('Song Title is :'), Text(viewModel.textField1 ?? "")],
      ),
    );
  }
}
