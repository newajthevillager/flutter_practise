import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UtilsAndEtc extends StatefulWidget {
  String screenTitle;

  UtilsAndEtc(this.screenTitle);

  @override
  _UtilsAndEtcState createState() => _UtilsAndEtcState();
}

class _UtilsAndEtcState extends State<UtilsAndEtc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.screenTitle),
      ),
      /// We use [Builder] here to use a [context]
      /// or else [Scaffold.of] will return null
      body: Builder(
        builder: (BuildContext ctx) {
          /// 'Builder' expects a return, thats why here 'Container' is returned
          return Container(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                padding: EdgeInsets.only(top: 10.0),
                width: 200.0,
                color: Colors.green,
                child: Column(
                  children: <Widget>[

                    // button to show snackbar
                    // 'ConstrainedBox' to set height,width etc.
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 170.0
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Show SnackBar",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        color: Colors.indigo,
                        onPressed: () {
                          showSnackBar(ctx, "This is a snackbar message");
                        },
                      ),
                    ),

                    // button to show toast
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 170.0
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Show Toast",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          showToastMessage("This is a toast message");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // show snackbar with a message
  void showSnackBar(BuildContext context, String message) {
    var snackbar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 1),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  // using Fluttertoast plugin
  void showToastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.red,
      textColor: Colors.white
    );
  }

}
