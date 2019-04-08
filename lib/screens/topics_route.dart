import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_flutter_practise/single_row_topics.dart';

class TopicsRoute extends StatelessWidget {
  
  Random random = Random();

  var topicsNames = <String>[
    'Navigation Drawer',
    'Utils & etc',
    'Tabs',
    'Tabs in another way',
    'Hero Widget',
    'Bottom Sheet',
    'Customized FAB',
    'Stateful Widget',
    'Swipe to delete',
    'Collapsing Toolbar',
    'TextField'
  ];
  var baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
    Colors.purple,
    Colors.amber
  ];
  var topicsIcons = <IconData>[
    Icons.chat,
    Icons.card_giftcard,
    Icons.gif,
    Icons.settings_ethernet,
    Icons.monetization_on,Icons.web,
    Icons.games,Icons.insert_emoticon,
    Icons.delete,
    Icons.cake
  ];
  
  // build listview items
  Widget buildListViewItems(List<Widget> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return items[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    // a random colorswatch & icondata

    List<SingleRowTopics> topicsList = <SingleRowTopics> [];
    for (int i = 0; i < topicsNames.length; i++) {
      SingleRowTopics singleRowTopics = new SingleRowTopics(topicsNames[i],
          baseColors[random.nextInt(baseColors.length)],
          topicsIcons[random.nextInt(topicsIcons.length)]);
      topicsList.add(singleRowTopics);
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Practice"),
        centerTitle: true,
      ),
      body: buildListViewItems(topicsList),
    );
    
  }

}