import 'package:flutter/material.dart';
import 'package:saffron_mobile/constants.dart';

class ButtonRound extends StatelessWidget {
  final Function? onPressed;
  final double height, width, fontSize;
  final String text;
  final Color outlineColor, textColor;
  ButtonRound(
      {this.onPressed,
      this.height = 40,
      this.width = 200,
      this.fontSize = 14,
      this.text = '',
      this.outlineColor = Colors.transparent,
      this.textColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(saffron_liliac),
          fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
            side: BorderSide(color: outlineColor, width: 1),
          ))),
      onPressed: () {
        onPressed!();
      },
      child: Text(text,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold)),
    );
  }
}
