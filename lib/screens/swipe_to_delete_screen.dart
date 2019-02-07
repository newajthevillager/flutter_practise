import 'package:flutter/material.dart';

// this can be stateless as well
class SwipeToDelete extends StatefulWidget {

  String title;
  SwipeToDelete(this.title);

  @override
  _SwipeToDeleteState createState() => _SwipeToDeleteState();
}

class _SwipeToDeleteState extends State<SwipeToDelete> {

  // generating a dummy list of string
  List<String> data = new List<String>.generate(20, (int i)=> "item no : ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext ctx, int position) {
          return Dismissible(
            child: ListTile(
              leading: Icon(Icons.local_florist),
              title: Text(data[position]),
            ),
            key: Key(data[position]),
            onDismissed: (direction) {
              data.removeAt(position);
            },
            background: Container(color: Colors.red,),
          );
        },
      ),
    );
  }
}
