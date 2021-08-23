import 'package:flutter/material.dart';
import '../commonassets/common_textfield.dart';

class EnterNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'Hello!',
            style: TextStyle(
              fontFamily: 'VarelaRound',
              fontWeight: FontWeight.w900,
              fontSize: 40,
            ),
          ),
        ),
        Text(
          'lets introduce',
          style: TextStyle(
            fontFamily: 'VarelaRound',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0xffBABFC4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: CommonTextField(hintText: 'First Name'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 45.0),
          child: CommonTextField(
            hintText: 'Last name',
          ),
        ),
      ],
    );
  }
}
