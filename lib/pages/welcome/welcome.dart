import 'package:flutter/material.dart';
import 'package:saffron_mobile/pages/welcome/login_screen.dart';
import 'package:saffron_mobile/pages/registration/preference_page_preset.dart';
import 'package:saffron_mobile/widgets.dart';
import 'package:saffron_mobile/constants.dart';

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
            decoration: BoxDecoration(gradient: saffron_gradient),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
              Align(
                  alignment: Alignment(0.0, -0.6),
                  child: Container(
                      width: 178,
                      height: 250,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Image.asset(
                          'images/saffron_logo178.png',
                          width: 178,
                          height: 178,
                        ),
                        Text("Saffron", style: TextStyle(color: Colors.white, fontSize: 45))
                      ]))),
              Align(
                  alignment: Alignment(0.0, 0.87),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                          height: 200,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                            ButtonRound(
                              text: "GET STARTED",
                              width: 320,
                              height: 47,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              textColor: saffron_liliac,
                              onPressed: () {},
                            ),
                            ButtonRound(
                              text: "I ALREADY HAVE AN ACCOUNT",
                              width: 320,
                              height: 47,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              textColor: saffron_gray69,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(title: "LoginPage")));
                              },
                            )
                          ])))),
            ])));
  }
}
