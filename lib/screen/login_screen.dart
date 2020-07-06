import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Wrap(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(220.0)),
                child: Container(
                  color: Colors.yellow[700],
                  height: 70.0,
                  width: 130.0,
                ),
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(400.0),
                        bottomRight: Radius.circular(500.0),
                      ),
                      child: Container(
                        color: Colors.green,
                        height: 130.0,
                        width: 60.0,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Text(
                        'D',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'dot',
                        style:
                            TextStyle(fontSize: 40.0, color: Colors.grey[700]),
                      ),
                      Text(
                        'theme',
                        style:
                            TextStyle(fontSize: 40.0, color: Colors.green[600]),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              hintText: 'dotthemepro@gmail.com',
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Text(
                                '@',
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.orange[700]),
                              )),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'PASSWORD',
                              hintText: '..............',
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.orange[700],
                              )),
                          obscureText: true,
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Material(
                              elevation: 2.0,
                              color: Colors.green[600],
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 50.0,
                                width: 330.0,
                                child: Center(
                                  child: GestureDetector(
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed("/homepage");
                                    },
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Material(
                              elevation: 2.0,
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 45.0,
                                width: 140.0,
                                child: Center(
                                  child: GestureDetector(
                                    child: Text(
                                      'Gmail',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.0),
                                    ),
                                    onTap: () {
                                      debugPrint('Tapped Gmail');
                                    },
                                  ),
                                ),
                              ),
                            ),
                            //    SizedBox(width: 10.0),
                            Material(
                              elevation: 2.0,
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 45.0,
                                width: 140.0,
                                child: Center(
                                  child: GestureDetector(
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.0),
                                    ),
                                    onTap: () {
                                      debugPrint('Tapped FB');
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    color: Colors.orange[500],
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                debugPrint('Forgot password');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/signup");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Don't have an account? Sign up now",
                                style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(400.0),
                                topRight: Radius.circular(300.0),
                                bottomLeft: Radius.circular(500.0)),
                            child: Container(
                              height: 80.0,
                              width: 60.0,
                              color: Colors.yellow[700],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(220.0),
                                bottomLeft: Radius.circular(150.0)
                                //i guess it will be better if we use Stack
                                ),
                            child: Container(
                              height: 100.0,
                              width: 50.0,
                              color: Colors.green[500],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
