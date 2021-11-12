import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saffron_mobile/widgets.dart';
import 'package:saffron_mobile/constants.dart';

class PreferencePreset extends StatefulWidget {
  final String title, headerText, question, ans1, ans2;
  final Gradient headerGradient;
  final Widget? child;

  PreferencePreset(
      {Key? key,
      required this.title,
      this.headerText = '',
      this.question = '',
      this.ans1 = '',
      this.ans2 = '',
      this.headerGradient = saffron_gradient,
      this.child})
      : super(key: key);

  @override
  _PreferencePresetState createState() => _PreferencePresetState();
}

class _PreferencePresetState extends State<PreferencePreset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SaffronHeader(
            gradient: widget.headerGradient, child: Text(widget.headerText)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: Text(widget.question,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: saffron_liliac, fontSize: 48))),
              Container(),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 20, 40),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonRound(
                        text: widget.ans1,
                        outlineWidth: 1.5,
                      ),
                      Container(height: 30),
                      ButtonRound(
                        text: widget.ans2,
                        outlineWidth: 1.5,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
