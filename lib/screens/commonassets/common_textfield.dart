import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField(
      {@required this.hintText, this.keyboardType, this.getTextData});
  final String hintText;
  final TextInputType keyboardType;
  final Function getTextData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: getTextData,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorWidth: 3.0,
      cursorColor: Color(0xff7C8189),
      cursorHeight: 25.0,
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'VarelaRound',
        fontSize: 22.0,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffBABFC4),
          fontFamily: 'VarelaRound',
          fontSize: 22.0,
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0)),
        contentPadding: const EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}
