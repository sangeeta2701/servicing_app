import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomThemeButton extends StatelessWidget {
  const CustomThemeButton({
    super.key,
    required this.buttonText,
    required this.ontap,
  });

  final String buttonText;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(colors: [
            appUiThemeColor,
            Color.fromRGBO(183, 0, 55, 1),
          ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: themeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
