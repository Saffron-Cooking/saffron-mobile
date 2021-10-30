import 'package:flutter/material.dart';
import '/widgets.dart';
import '/constants.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                  alignment: Alignment(0.0, -0.6),
                  child: Container(
                      width: 178,
                      height: 250,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'images/saffron_logo178.png',
                              width: 178,
                              height: 178,
                            ),
                            Text("Saffron",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 45))
                          ]))),
              Align(
                  alignment: Alignment(0.0, 0.87),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                          height: 200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ButtonRound(
                                  text: "GET STARTED",
                                  width: 320,
                                  height: 47,
                                  fontSize: 18,
                                  textColor: saffron_liliac,
                                  onPressed: () {
                                    print("worked");
                                  },
                                ),
                                ButtonRound(
                                  text: "I ALREADY HAVE AN ACCOUNT",
                                  width: 320,
                                  height: 47,
                                  fontSize: 18,
                                  textColor: saffron_gray191,
                                  onPressed: () {
                                    print("worked");
                                  },
                                )
                              ])))),
            ])));
  }
}
