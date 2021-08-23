import 'package:flutter/material.dart';
import '../commonassets/common_textfield.dart';

class EnterEmailScreen extends StatelessWidget {
  // EnterEmailScreen(this.onChanged);
  // final Function onChanged;
  final Function getTextData;
  EnterEmailScreen({this.getTextData});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'Sign up',
            style: TextStyle(
              fontFamily: 'VarelaRound',
              fontWeight: FontWeight.w900,
              fontSize: 40,
            ),
          ),
        ),
        Text(
          'to start',
          style: TextStyle(
            fontFamily: 'VarelaRound',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0xffBABFC4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 83.0),
          child: CommonTextField(
            hintText: 'Enter your Email Address',
            keyboardType: TextInputType.emailAddress,
            getTextData: getTextData,
          ),
        ),
      ],
    );
  }
}
