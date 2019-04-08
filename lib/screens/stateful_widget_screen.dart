import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {

  String title;

  StatefulWidgetScreen(this.title);

  @override
  _StatefulWidgetScreenState createState() => _StatefulWidgetScreenState();
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {

  String city = "";
  // controller is needed to handle the text of TextField widget
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(

                children: <Widget>[
                  // textfield inside a Row need to be wrpped with Expanded or Flexible widget
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Your City : ",
                      ),
                      controller: textEditingController,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      setState(() {
                        city = textEditingController.text;
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: 200.0,),
              Expanded(
                child: Text("You live in $city"),
              )

            ],
          ),
        ),
      ),
    );
  }

}
