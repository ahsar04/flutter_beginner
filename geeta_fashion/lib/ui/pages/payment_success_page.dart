import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/icons/success.png',
              ),
              height: 120,
              width: 120,
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                'Congrats! Your Order has \nbeen placed',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                'Your items has been placcd and is on \nit’s way to being processed',
                style: blackTextStyle.copyWith(
                  fontWeight: reguler,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextButton(
              title: 'Continue Shopping',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            ),
            const SizedBox(
              height: 18,
            ),
            // on develop
            // SizedBox(
            //   height: 50,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         const Icon(Icons.arrow_back),
            //         Text(
            //           ' Back to Cart',
            //           style: blackTextStyle.copyWith(
            //             fontWeight: bold,
            //             fontSize: 14,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
