import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {

  String title;
  TabScreen(this.title);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  // a list of tab pages
  List<Widget> pages = <Widget> [
    //1st page
    Center(
      child: Icon(
        Icons.android,
        size: 70.0,
        color: Colors.green,
      ),
    ),
    // 2nd page
    Center(
      child: Icon(
        Icons.card_giftcard,
        size: 70.0,
        color: Colors.blue,
      ),
    ),
    // 3rd page
    Center(
      child: Icon(
        Icons.wb_incandescent,
        size: 70.0,
        color: Colors.yellow,
      ),
    )
  ];

  // a list of tabs
  List<Tab> tabs = <Tab> [
    // 1st tab
    Tab(
      icon: Icon(Icons.android),
      text: "Tab 1",
    ),
    // Tab 2
    Tab(
      icon: Icon(Icons.card_giftcard),
      text: "Tab 2",
    ),
    Tab(
      icon: Icon(Icons.wb_incandescent),
      text: "Tab 3",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.cyan,
            bottom: TabBar(tabs: tabs),
          ),
          body: TabBarView(
            children: pages,
          ),
        )
    );
  }
}
