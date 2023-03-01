import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TextFieldValue extends StatelessWidget {
  TextFieldValue(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.textInputType});
  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: textFieldTextStyle,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
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
