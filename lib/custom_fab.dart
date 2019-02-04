import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomFAB extends StatelessWidget {

  GestureTapCallback onPressed;
  CustomFAB({this.onPressed}); // required parameter

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.blue,
      splashColor: Colors.green,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.accessible),
            SizedBox(
              width: 20.0,
            ),
            Text(
              "BUTTON",
              style: TextStyle(
                  color: Colors.black87
              ),
            )
          ],
        ),
      ),
      shape: StadiumBorder(),
    );
  }

}
