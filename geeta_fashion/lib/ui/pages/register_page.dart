import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';
import 'package:geeta/ui/widgets/form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      height: 294,
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
                      'Get’s started with Geeta.',
                      style: whiteTextStyle.copyWith(
                        fontWeight: black,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Already have an account?',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Log In',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'REGISTER',
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
                  title: 'Your Name',
                  iconField: Icon(Icons.email),
                  text: 'Your Full Name',
                ),
                const SizedBox(
                  height: 34,
                ),
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
                const SizedBox(
                  height: 17,
                ),
                CustomTextButton(
                  hight: 54,
                  title: 'Register',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By  joining I agree to receive emails from Geeta.',
                      style: greyTextStyle.copyWith(
                        fontWeight: reguler,
                        fontSize: 12,
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
