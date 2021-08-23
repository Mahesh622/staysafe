// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:staysafe/logo/logo_icons.dart';
import 'package:staysafe/screens/loginscreen/login_screen.dart';
import 'package:staysafe/screens/signupscreens/enter_name_signup.dart';
import 'enter_email_signup.dart';

class CommonScreenSignup extends StatefulWidget {
  CommonScreenSignup({Key key}) : super(key: key);

  @override
  _CommonScreenSignupState createState() => _CommonScreenSignupState();
}

class _CommonScreenSignupState extends State<CommonScreenSignup> {
  final _controller = PageController();
  final emailErrorMessage = SnackBar(content: Text('Enter a valid email'));
  String email;
  Function getTextData(String textData) {
    email = textData;
  }

  // Function isEmailValid() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 20.0),
                child: Icon(
                  Logo.logo_renewed,
                  color: Colors.black,
                  size: 70,
                ),
              ),
              Container(
                height: 310,
                width: 500,
                child: Scaffold(
                  backgroundColor: Color(0xffFEFEFE),
                  body: PageView(
                    controller: _controller, // assign it to PageView
                    physics: NeverScrollableScrollPhysics(),
                    allowImplicitScrolling: true,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: EnterEmailScreen(
                          getTextData: getTextData,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: EnterNameScreen(),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: LoginScreen())
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {
                  _controller.animateToPage(_controller.page.toInt() - 1,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.elasticOut);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30.0,
                  color: Color(0xffBABFC4),
                ),
                minWidth: 30.0,
                height: 65.0,
              ),
              MaterialButton(
                onPressed: () {
                  email != null
                      ? _controller.animateToPage(_controller.page.toInt() + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.elasticOut)
                      : ScaffoldMessenger.of(context)
                          .showSnackBar(emailErrorMessage);
                },
                minWidth: 170.0,
                height: 65.0,
                child: Icon(
                  Icons.arrow_forward,
                  size: 30.0,
                  color: Colors.white,
                ),
                color: Color(0xff0f0b45),
                highlightElevation: 5.0,
                elevation: 5.0,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 45.0, 0.0, 25.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Log in?',
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 20.0,
                    color: Colors.black54),
              ),
            ),
          )
        ],
      ),
    );
  }
}
