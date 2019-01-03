import 'package:flutter/material.dart';

class NavDrawerScreen extends StatelessWidget {
  String topic;

  NavDrawerScreen(this.topic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Flutter User"),
              accountEmail: Text("linuxunixstorm@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("N"),
                backgroundColor: Colors.indigo,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text("K"),
                  backgroundColor: Colors.indigo,
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Item One"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text("Item Two"),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text(topic + " route"),
      ),
    );
  }
}
