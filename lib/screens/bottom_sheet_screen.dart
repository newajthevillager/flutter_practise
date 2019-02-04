import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {

  String title;
  BottomSheetScreen(this.title);

  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Modal Bottom Sheet"),
                onPressed: _showModalBottomSheet,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              RaisedButton(
                child: Text("Persistant Bottom Sheet"),
                onPressed: null,
              )
            ],
          ),
        )
      ),
    );
  }

  // Pressing back or touching outside of the bottom sheet will dismiss it from view.
  void _showModalBottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)
            )
          ),
          height: 200.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.games),
                  title: Text("Games"),
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Map"),
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text("Chat"),
                )
              ],
            ),
          ),
        );
      }
    );
  }

}
