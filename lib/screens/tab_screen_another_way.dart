import 'package:flutter/material.dart';

/*
Another way of implementing tabs
Here we need a tabcontroller
*/
class TabScreenAnotherWay extends StatefulWidget {
  String title;

  TabScreenAnotherWay(this.title);

  @override
  _TabScreenAnotherWayState createState() => _TabScreenAnotherWayState();
}

class _TabScreenAnotherWayState extends State<TabScreenAnotherWay>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  } // a list of navigation pages

  List<Widget> pages = <Widget>[
    // page 1
    Container(
      child: Center(
        child: Icon(
          Icons.games,
          size: 70.0,
          color: Colors.pink,
        ),
      ),
    ),
    // page 2
    Container(
      child: Center(
        child: Icon(
          Icons.insert_emoticon,
          size: 70.0,
          color: Colors.black87,
        ),
      ),
    ),
    // page 2
    Container(
      child: Center(
        child: Icon(
          Icons.work,
          size: 70.0,
          color: Colors.blue,
        ),
      ),
    )
  ];

  // a list of tabs
  List<Tab> tabs = <Tab>[
    // Tab 1
    Tab(
      text: "Tab one",
      icon: Icon(Icons.games),
    ),
    // tab 2
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.insert_emoticon),
    ),
    // tab 3
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.work),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          tabs: tabs,
          controller: tabController,
          indicatorColor: Colors.blue,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: pages,
      ),
      bottomNavigationBar: Material(
        color: Colors.cyan,
        child: TabBar(
          tabs: tabs,
          controller: tabController,
          indicatorColor: Colors.red,
        ),
      ),
    );
  }
}
