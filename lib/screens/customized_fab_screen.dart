import 'package:flutter/material.dart';
import 'package:my_flutter_practise/custom_fab.dart';

class CustomizedFABScreen extends StatelessWidget {
  
  String title;
  CustomizedFABScreen(this.title);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      floatingActionButton: CustomFAB(
          onPressed : _demoMethod
      ),
    );
  }

  void _demoMethod() {

  }
  
}
