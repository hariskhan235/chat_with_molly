import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chai_with_molly/home_sceen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(0.06 * screenWidth),
        child: Column(
          children: [
            const Expanded(
              child: RiveAnimation.asset('assets/images/computer.riv'),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                  fontFamily: 'Canterbury', color: Colors.black, fontSize: 32),
              child: AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText(
                    textAlign: TextAlign.center,
                    'Chai With Molly',
                    speed: const Duration(milliseconds: 100)),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
