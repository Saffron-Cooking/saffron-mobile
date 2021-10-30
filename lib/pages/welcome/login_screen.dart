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
        body: Material(
            textStyle: TextStyle(color: Colors.white),
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [saffron_liliac, saffron_yellow])),
                child: Stack(children: <Widget>[
                  //back button
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
                  //saffron logo
                  Align(
                      alignment: Alignment(0.0, -0.65),
                      child: Image.asset(
                        'images/saffron_logo82.png',
                        width: 82,
                        height: 82,
                      )),
                  //Sign In segment
                  Align(
                      alignment: Alignment(0.0, -0.1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        child: Container(
                            alignment: Alignment.center,
                            height: 250,
                            width: 320,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Sign In", style: TextStyle(fontSize: 36)),
                                //Email input row
                                Container(
                                    height: 90,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(alignment: Alignment.topLeft, child: Text("Email")),
                                        Material(
                                          color: Color(0x9FFFFFFF),
                                          borderRadius: BorderRadiusDirectional.circular(10),
                                          elevation: default_elevation,
                                          shadowColor: saffron_liliac,
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Enter your email",
                                                  hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                                                  icon: Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0), child: Icon(CupertinoIcons.mail)))),
                                        ),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "Invalid email adress",
                                              style: TextStyle(color: saffron_red191),
                                            )),
                                      ],
                                    )),
                                //Password input row
                                Container(
                                    height: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Align(alignment: Alignment.topLeft, child: Text("Password")),
                                        TextField(),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              "Incorrect password",
                                              style: TextStyle(color: saffron_red191),
                                            )),
                                      ],
                                    )),
                              ],
                            )),
                      ))
                ]))));
  }
}
