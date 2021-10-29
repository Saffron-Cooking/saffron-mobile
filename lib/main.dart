import 'package:flutter/material.dart';
import 'pages/welcome/welcome.dart';

void main() => runApp(Saffron());

class Saffron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saffron',
      theme: ThemeData(),
      home: WelcomePage(title: 'Welcome'),
    );
  }
}
