import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color appUiDarkColor = Colors.black;
const Color appUiLightColor = Colors.white;
const Color appUiThemeColor = Color.fromRGBO(218, 50, 135, 1);
const Color appUiTextColor = Color.fromRGBO(169, 169, 169, 1);
const Color appUiBorderColor = Color.fromRGBO(198, 198, 198, 1);

//text style
TextStyle headingTextStyle = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w600, color: appUiDarkColor);
TextStyle contentTextStyle = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w400, color: appUiTextColor);
TextStyle hintTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: appUiTextColor.withOpacity(0.5));
TextStyle textfieldTextStyle = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w400, color: appUiTextColor);
