import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/widgets.dart';
import '/constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [saffron_liliac, saffron_yellow])),
            child: Stack(children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: RotatedBox(
                          quarterTurns: -1,
                          child: IconButton(
                              icon: Icon(CupertinoIcons.triangle),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context);
                              })))),
              Align(
                  alignment: Alignment(0.0, -0.6),
                  child: Image.asset(
                    'images/saffron_logo82.png',
                    width: 82,
                    height: 82,
                  )),
              Align(
                  alignment: Alignment(0.0, 0.87),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                          height: 200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("Sign in"),
                                ButtonRound(
                                    text: "GO BACK",
                                    width: 320,
                                    height: 47,
                                    fontSize: 18,
                                    textColor: saffron_gray191,
                                    onPressed: () {})
                              ])))),
            ])));
  }
}
