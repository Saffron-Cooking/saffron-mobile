import 'package:flutter/material.dart';
import 'package:saffron_mobile/constants.dart';

class ButtonRound extends StatelessWidget {
  final Function? onPressed;
  final double height, width, fontSize;
  final String text;
  final Color outlineColor, textColor;
  final FontWeight fontWeight;
  ButtonRound(
      {this.onPressed,
      this.height = 40,
      this.width = 200,
      this.fontSize = 14,
      this.text = '',
      this.outlineColor = Colors.transparent,
      this.textColor = Colors.transparent,
      this.fontWeight = FontWeight.normal});

  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(saffron_liliac),
          fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
            side: BorderSide(color: outlineColor, width: 1),
          ))),
      onPressed: () {
        onPressed!();
      },
      child: Text(text, style: TextStyle(color: textColor, fontSize: fontSize, fontWeight: fontWeight)),
    );
  }
}

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget icon;
  final String label, hint, error;
  final Color textColor, errorColor;
  final bool isError;
  InputTextField(
      {required this.controller,
      required this.icon,
      this.label = '',
      this.hint = '',
      this.error = '',
      this.textColor = Colors.white,
      this.errorColor = saffron_red,
      this.isError = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(alignment: Alignment.topLeft, child: Text(label)),
            Material(
                color: Color(0x9FFFFFFF),
                borderRadius: BorderRadiusDirectional.circular(10),
                elevation: default_elevation,
                shadowColor: saffron_liliac,
                child: TextField(
                    style: TextStyle(color: textColor),
                    controller: controller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                        icon: Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0), child: icon)))),
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
