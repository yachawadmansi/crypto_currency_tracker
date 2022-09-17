import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'LoginPage/LoginPage.dart';


class flashscreen extends StatelessWidget {
  const flashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3500,
       // animationDuration: Duration(seconds: 15),
        splashIconSize: 300,
        backgroundColor: Colors.tealAccent,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splash: Lottie.asset('assets/cryptofront.json'), nextScreen: loginPage());

  }
}
