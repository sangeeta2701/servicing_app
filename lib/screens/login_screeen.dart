import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome back",
                style: headingTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Please enter login details to use the app",
                  style: contentTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: TextFieldValue(
                  hintText: "Enter Email",
                  controller: emailController,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: TextFieldValue(
                      hintText: "Enter Password",
                      controller: passwordController)),
            ],
          ),
        ),
      ),
    );
  }
}
