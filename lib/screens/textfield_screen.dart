import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {

  String title;

  TextFieldScreen(this.title);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  TextEditingController controller = TextEditingController();

  var text = "";

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0)
              ),
              labelText: "TextField with TextController",
              hintText: 'Your Name'
            ),
            controller: controller,
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              setState(() {
                text = controller.text;
              });
            },
          ),
          Text(text)
        ],
      ),
    );
  }
}
