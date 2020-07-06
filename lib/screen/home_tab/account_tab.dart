import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screen/login_screen.dart';

class AccountTab extends StatefulWidget {
  AccountTab({Key key}) : super(key: key);

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Center(
        child: FlatButton(
          child: Text("Log out"),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pushReplacement(
                CupertinoPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
    );
  }
}
