import 'package:car_servicing_app/Screens/home_page.dart';
import 'package:car_servicing_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
          builder: (context) => HomePage(),
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
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Servicing",
              style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: appUiLightColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: LoadingAnimationWidget.staggeredDotsWave(
                  color: appUiLightColor, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
