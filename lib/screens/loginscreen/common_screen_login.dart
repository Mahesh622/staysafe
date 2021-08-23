import 'package:flutter/material.dart';
import 'package:staysafe/logo/logo_icons.dart';
import 'package:staysafe/screens/signupscreens/common_screen_signup.dart';
import 'login_screen.dart';

class CommonScreenLogin extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: LoginScreen(),
              ),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back,
                  size: 30.0,
                  color: Color(0xffBABFC4),
                ),
                minWidth: 30.0,
                height: 65.0,
              ),
              MaterialButton(
                onPressed: () {},
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CommonScreenSignup()));
              },
              child: Text(
                'Sign up?',
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
