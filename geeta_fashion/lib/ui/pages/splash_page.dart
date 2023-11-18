import 'dart:async';
import 'package:geeta/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/start', (route) => false);
    });

    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                darkLogo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
