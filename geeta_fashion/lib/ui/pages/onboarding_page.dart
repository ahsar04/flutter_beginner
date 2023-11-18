import 'package:geeta/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:geeta/ui/widgets/button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 117,
              ),
              const SizedBox(
                width: 129,
                child: Image(
                  image: AssetImage(
                    darkLogo,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Text(
                'Create your fashion \nin your own way',
                style: blackTextStyle.copyWith(
                  fontWeight: black,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Text(
                'Each men and women has their own style, Geeta \nhelp you to create your unique style.',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 49),
              SizedBox(
                height: 54,
                width: 222,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56),
                    ),
                  ),
                  child: Text(
                    'LOG IN',
                    style: blackTextStyle.copyWith(
                      fontWeight: black,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      lineIcon,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    'OR',
                    style:
                        blackTextStyle.copyWith(fontWeight: bold, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  const Image(
                    image: AssetImage(
                      lineIcon,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              CustomTextButton(
                hight: 54,
                width: 222,
                title: 'REGISTER',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
