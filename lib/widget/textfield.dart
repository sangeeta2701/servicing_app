import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TextFieldValue extends StatelessWidget {
  const TextFieldValue({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textfieldTextStyle,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter Email ",
        hintStyle: hintTextStyle,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(6),
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: appUiBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: appUiThemeColor, width: 1),
        ),
      ),
    );
  }
}
