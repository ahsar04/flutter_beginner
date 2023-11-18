import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';
import 'package:geeta/ui/widgets/form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(bottom: 45),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: purpleColor,
            padding: const EdgeInsets.all(30),
            child: Stack(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      height: 382,
                      image: AssetImage(
                        'assets/images/fashion.png',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/on-boarding');
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 82,
                    ),
                    Text(
                      'WELCOME BACK!',
                      style: whiteTextStyle.copyWith(
                        fontWeight: black,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Yay! You are back! Thanks for shopping with us.\nWe have excited deals and promotions going on,\n grab your pick now! ',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 95,
                    ),
                    Text(
                      'LOG IN',
                      style: whiteTextStyle.copyWith(
                        fontWeight: black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: 'Email Addres',
                  iconField: Icon(Icons.email),
                  text: 'Your email',
                ),
                const SizedBox(
                  height: 34,
                ),
                const CustomFormField(
                  title: 'Password',
                  iconField: Icon(Icons.lock),
                  text: 'password',
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (newValue) {
                        setState(() {
                          rememberMe = newValue ?? false;
                        });
                      },
                    ),
                    Text(
                      'Remember Me',
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                    const Spacer(),
                    Text(
                      'Forgot password?',
                      style: blueTextStyle.copyWith(
                        fontWeight: reguler,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                CustomTextButton(
                  hight: 54,
                  title: 'LOG IN',
                  onPressed: (() {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  }),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not registered yet?',
                      style: greyTextStyle.copyWith(
                        fontWeight: reguler,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        ' Create an Account',
                        style: blueTextStyle.copyWith(
                          fontWeight: reguler,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
