import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saffron_mobile/widgets.dart';
import 'package:saffron_mobile/constants.dart';

class RegistrationForm extends StatefulWidget {
  final String title, headerText, question, ans1, ans2;
  final Gradient headerGradient;
  final Widget? child;

  RegistrationForm(
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
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();

  bool isMailError = false;
  bool isPassword1Error = false;
  bool isPassword2Error = false;

  OutlineInputBorder defaultBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(13));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SaffronHeader(
            gradient: widget.headerGradient, child: Text(widget.headerText)),
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 22, 40, 0),
                    child: Container(
                      width: 320,
                      child: Column(
                        children: <Widget>[
                          InputTextField(
                            controller: name,
                            hint: 'Name',
                            hintColor: saffron_gray69,
                            border: defaultBorder,
                          ),
                          InputTextField(
                              controller: surname,
                              hint: 'Surname',
                              hintColor: saffron_gray69,
                              border: defaultBorder),
                          InputTextField(
                              controller: email,
                              hint: 'Email',
                              hintColor: saffron_gray69,
                              isError: isMailError,
                              error: 'Please enter valid email',
                              errorColor: saffron_red,
                              border: defaultBorder),
                          InputTextField(
                              controller: password1,
                              hint: 'Password',
                              hintColor: saffron_gray69,
                              isError: isPassword1Error,
                              error:
                                  'sjfnivsufvnlsdgkhjblghkvstrleumkglhs b,djgkjv,dzhjfvlgbmsdkjlhglcsivuzghxbnciudkvgnsdhjx',
                              errorColor: saffron_red,
                              border: defaultBorder),
                          InputTextField(
                              controller: password2,
                              hint: 'Repeat password',
                              hintColor: saffron_gray69,
                              isError: isPassword2Error,
                              error: 'Password do not match',
                              errorColor: saffron_red,
                              border: defaultBorder),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: ButtonRound(
                              text: "test",
                              textColor: Colors.black,
                              outlineWidth: 2,
                              onPressed: () {
                                setState(() {
                                  isMailError ^= true;
                                  isPassword1Error ^= true;
                                  isPassword2Error ^= true;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    )))));
  }
}
