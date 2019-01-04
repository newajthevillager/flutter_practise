import 'package:flutter/material.dart';
import 'package:my_flutter_practise/screens/routing_nav_drawer.dart';
import 'package:my_flutter_practise/screens/utils_and_etc.dart';

/*
Single item for a listview
*/
class SingleRowTopics extends StatelessWidget {
  static double rowHeight = 100.0;
  BorderRadius borderRadius = BorderRadius.circular(rowHeight / 4);

  String topicName;
  ColorSwatch colorSwatch;
  IconData iconData;

  SingleRowTopics(this.topicName, this.colorSwatch, this.iconData)
      : assert(topicName != null),
        assert(colorSwatch != null),
        assert(iconData != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: rowHeight,
      child: InkWell(
        borderRadius: borderRadius,
        highlightColor: colorSwatch,
        splashColor: colorSwatch,
        onTap: () {
          debugPrint("Item tapped");
          _navigateToScreen(context);
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // 1st child of row
                    Padding(
                      padding:
                      EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                      child: Icon(
                        iconData,
                        size: 30.0,
                      ),
                    ),
                    // 2nd child of row
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          topicName,
                          style: Theme
                              .of(context)
                              .textTheme
                              .title,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                height: 1.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  // navigate to screen
  void _navigateToScreen(BuildContext context) {
    debugPrint("pressed");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        if (topicName == "Navigation Drawer"){
          debugPrint("pressed $topicName");
          return NavDrawerScreen(topicName);
//          return UtilsAndEtc("Foo");
        } else if (topicName == "Utils & etc") {
          debugPrint("pressed $topicName");
          return UtilsAndEtc(topicName);
        }
      }
    ));
  }
}
