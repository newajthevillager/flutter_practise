import 'package:flutter/material.dart';

class HeroWidgetScreen extends StatefulWidget {
  
  String title;
  HeroWidgetScreen(this.title);
  
  @override
  _HeroWidgetScreenState createState() => _HeroWidgetScreenState();
}

class _HeroWidgetScreenState extends State<HeroWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GestureDetector(
          child: Hero(
            tag: "herotag",
            child: Icon(
              Icons.account_balance,
              size: 70.0,
            ),
          ),
          onTap: () {
            navigateToHeroScreen(context);
          },
        ),
      ),
    );
  }

  void navigateToHeroScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        // from here a new screen
        return Scaffold(
          appBar: AppBar(
            title: Text("Hero Animation"),
          ),
          body: Container(
            child: Center(
              child: Hero(
                tag: "herotag",
                child: Icon(Icons.account_balance, size: 210.0,),
              ),
            ),
          ),
        );
      }
    ));
  }
}
