import 'package:geeta/shared/theme.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg_start.png'),
                  fit: BoxFit.cover),
            ),
          ),

          // Element yang ditutupi
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 303,
                    child: Image(
                      image: AssetImage(
                        lightLogo,
                      ),
                    ),
                  ),
                  const SizedBox(height: 65),
                  SizedBox(
                    height: 54,
                    width: 222,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/on-boarding', (route) => false);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(
                            color: Colors.white), // Warna outline
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(56),
                        ),
                      ),
                      child: Text(
                        'SHOP NOW',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 125,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
