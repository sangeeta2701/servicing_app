import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/customButton.dart';
import '../widget/textfield.dart';
import 'home_screen.dart';

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
                "Hey! Welcome To My Service",
                style: headingTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Please enter your login details to use the app",
                  style: contentTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: TextFieldValue(
                  textInputType: TextInputType.emailAddress,
                  hintText: "Enter Email",
                  controller: emailController,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: TextFieldValue(
                      textInputType: TextInputType.visiblePassword,
                      hintText: "Enter Password",
                      controller: passwordController)),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: CustomThemeButton(
                  buttonText: "Login",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
