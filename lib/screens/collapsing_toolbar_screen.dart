import 'package:flutter/material.dart';

class CollapsingToolbarScreen extends StatefulWidget {
  @override
  _CollapsingToolbarScreenState createState() =>
      _CollapsingToolbarScreenState();
}

class _CollapsingToolbarScreenState extends State<CollapsingToolbarScreen> {
  @override
  Widget build(BuildContext context) {
    var itemHeight = 40.0;
    var generatedItems = List.generate(30, (index) => "Item no ${index + 1}");

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  "Collapsing Toolbar",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image.asset(
                "images/macc.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                (ctx, index) => ListTile(
                      title: Text(generatedItems[index]),
                    ),
                childCount: generatedItems.length),
            itemExtent: itemHeight,
          )
        ],
      ),
    );
  }
}
