import 'package:figma_design1/view/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigationToHome();
  }

  _navigationToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff027C90),
      body: Center(
        child: SizedBox(
          child: SvgPicture.asset("assets/first_splash.svg"),
        ),
      ),
    );
  }
}
