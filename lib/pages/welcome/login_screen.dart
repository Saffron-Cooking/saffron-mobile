import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saffron_mobile/widgets.dart';
import 'package:saffron_mobile/constants.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mailControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isMailError = false;
  bool isPasswordError = false;

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
                  Center(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    //saffron logo
                    Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Image.asset(
                          'images/saffron_logo82.png',
                          width: 82,
                          height: 82,
                        )),
                    //Sign In segment
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Container(
                          alignment: Alignment.center,
                          height: 248,
                          width: 320,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Sign In", style: TextStyle(fontSize: 34)),
                              //Email input row
                              InputTextField(
                                  label: 'Email',
                                  hint: 'Enter your email',
                                  isError: isMailError,
                                  error: 'Invalid email adress',
                                  errorColor: saffron_hyperblue,
                                  controller: mailControler,
                                  icon: Icon(CupertinoIcons.mail, color: Colors.white)),
                              //Password input row
                              InputTextField(
                                  label: 'Password',
                                  hint: 'Enter your password',
                                  isError: isPasswordError,
                                  error: 'Incorrect password',
                                  errorColor: saffron_hyperblue,
                                  controller: passwordController,
                                  icon: Icon(CupertinoIcons.lock, color: Colors.white)),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                      style: ButtonStyle(overlayColor: MaterialStateProperty.all<Color>(Colors.transparent)),
                                      onPressed: () {},
                                      child: Text('Forgot your password?', style: TextStyle(color: Colors.white))))
                            ],
                          )),
                    ),
                    //login button
                    Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: ButtonRound(
                          text: "LOGIN",
                          width: 320,
                          height: 47,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          textColor: saffron_liliac,
                          onPressed: () {},
                        )),
                    //alternative sign in
                    Container(
                        height: 130,
                        width: 320,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
                          Text('— OR —', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                            TextButton(
                                style: ButtonStyle(overlayColor: MaterialStateProperty.all<Color>(Colors.transparent)),
                                onPressed: () {},
                                child: Image.asset(
                                  'images/google_logo.png',
                                  width: 70,
                                  height: 70,
                                )),
                            TextButton(
                                style: ButtonStyle(overlayColor: MaterialStateProperty.all<Color>(Colors.transparent)),
                                onPressed: () {},
                                child: Image.asset(
                                  'images/facebook_logo.png',
                                  width: 70,
                                  height: 70,
                                ))
                          ])
                        ]))
                  ]))
                ]))));
  }
}
