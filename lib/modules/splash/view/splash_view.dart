import 'package:flutter/material.dart';
import 'package:quotes_status/core/utils/common_string.dart';
import 'package:quotes_status/modules/splash/view/tutorial_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const TutorialScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            CommonString.imgSplash,
          ),
        ),
      ),
    );
    // CustomImageView(
    //   svgPath: CommonString.imgSplash,
    // );
  }
}
