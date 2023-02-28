import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/constants.dart';
import 'login_screeen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiThemeColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SERVICING",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: appUiLightColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: LoadingAnimationWidget.staggeredDotsWave(
                  color: appUiLightColor, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
