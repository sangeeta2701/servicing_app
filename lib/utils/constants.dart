import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color appUiDarkColor = Colors.black;
const Color appUiLightColor = Colors.white;
const Color appUiThemeColor = Color.fromRGBO(209, 23, 79, 1);
const Color appUiTextColor = Color.fromRGBO(169, 169, 169, 1);
const Color appUiBorderColor = Color.fromRGBO(198, 198, 198, 1);
const Color appUiContainerColor = Color.fromRGBO(235, 235, 235, 0.3);

//text style
TextStyle headingTextStyle = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w600, color: appUiDarkColor);
TextStyle contentTextStyle = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w400, color: appUiTextColor);
TextStyle hintTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: appUiTextColor.withOpacity(0.5));
TextStyle textFieldTextStyle = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w400, color: appUiTextColor);
TextStyle themeButtonTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w500, color: appUiLightColor);
TextStyle themeHeadingTextStyle = GoogleFonts.poppins(
    fontSize: 22, fontWeight: FontWeight.w600, color: appUiThemeColor);
TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w500, color: appUiDarkColor);

TextStyle subHeadingTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w500, color: appUiDarkColor);

const TextStyle textfieldInputStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: appUiDarkColor);
