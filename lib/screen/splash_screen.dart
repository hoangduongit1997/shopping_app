import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacementNamed("/homepage");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
            child: CupertinoPageScaffold(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Image.asset(
                        "assets/icons/icon_app.png",
                        scale: 2.5,
                        alignment: AlignmentDirectional.center,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Text("Đang tải ....")
                    ],
                  ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
