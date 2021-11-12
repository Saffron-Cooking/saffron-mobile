import 'package:flutter/material.dart';
import 'package:saffron_mobile/constants.dart';

//custom round button with chadows and gradient outline
class ButtonRound extends StatelessWidget {
  final Function? onPressed;
  final double height, width, fontSize, outlineWidth;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final Gradient outlineGradient;
  ButtonRound(
      {this.onPressed,
      this.height = 47,
      this.width = 320,
      this.fontSize = 18,
      this.outlineWidth = 0,
      this.text = '',
      this.textColor = saffron_gray69,
      this.fontWeight = FontWeight.w500,
      this.outlineGradient = saffron_gradient});

  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(height / 2), gradient: outlineGradient),
        child: Padding(
            padding: EdgeInsets.all(outlineWidth),
            child: ElevatedButton(
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all<Color>(saffron_liliac),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(height / 2)))),
              onPressed: () {
                onPressed!();
              },
              child: Text(text, style: TextStyle(color: textColor, fontSize: fontSize, fontWeight: fontWeight)),
            )));
  }
}

//custom text input field with title, hint, icon and error message
class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget? icon;
  final String label, hint, error;
  final Color textColor, errorColor, hintColor, shadowColor;
  final InputBorder border;
  final bool isError;
  InputTextField(
      {required this.controller,
      this.icon,
      this.label = '',
      this.hint = '',
      this.error = '',
      this.textColor = Colors.white,
      this.errorColor = saffron_red,
      this.hintColor = Colors.white,
      this.shadowColor = Colors.transparent,
      this.border = InputBorder.none,
      this.isError = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(child: label == '' ? null : Align(alignment: Alignment.topLeft, child: Text(label))),
        Material(
            color: Color(0x9FFFFFFF),
            borderRadius: BorderRadiusDirectional.circular(10),
            elevation: default_elevation,
            shadowColor: shadowColor,
            child: TextField(
                style: TextStyle(color: textColor),
                controller: controller,
                decoration: InputDecoration(
                  border: border,
                  hintText: hint,
                  hintStyle: TextStyle(color: hintColor, fontWeight: FontWeight.w400),
                  icon: icon == null ? null : Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0), child: icon),
                ))),
        Align(
            alignment: Alignment.bottomRight,
            child: Text(
              isError ? error : '',
              style: TextStyle(color: errorColor),
            )),
      ],
    ));
  }
}

//custom Appbar with gradient for saffron pages

class SaffronHeader extends StatelessWidget implements PreferredSize {
  final Gradient gradient;
  final TextStyle textStyle;
  final Widget child;
  final Size preferredSize = const Size.fromHeight(saffron_header_preferred_height);

  SaffronHeader(
      {this.gradient = saffron_gradient, this.child = const Text(''), this.textStyle = const TextStyle(color: saffron_gray69, fontSize: 20)});

  Widget build(BuildContext context) {
    return Material(
        textStyle: textStyle,
        child: Container(
            height: saffron_header_preferred_height,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Center(child: child),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 2.5,
                        decoration: BoxDecoration(
                          gradient: gradient,
                        )))
              ],
            )));
  }
}
