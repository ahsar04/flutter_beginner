import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';
import 'package:geeta/ui/widgets/form.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Credit/Debit Card',
          style: blackTextStyle.copyWith(
            fontWeight: black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(19, 25, 19, 19),
                height: 240,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/card_bg.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: const Offset(0, 1),
                      blurRadius: 8,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Image(
                        image: AssetImage(
                          'assets/images/mc_symbol.png',
                        ),
                        height: 40,
                        width: 65,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      '5757  4747  5757  4747',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 25,
                        letterSpacing: 2,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'Varat Singh Sharma',
                          style: whiteTextStyle.copyWith(
                            fontWeight: reguler,
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                        const Spacer(),
                        Text(
                          '07/21',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              const Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage(
                    cameraIcon,
                  ),
                  height: 29,
                  width: 34,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const CustomFormField(
                readOnly: true,
                title: 'Name on card',
                text: 'Varat Singh Sharma',
                iconField: Icon(Icons.payment_outlined),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomFormField(
                readOnly: true,
                title: 'Card Number',
                text: '4747  4747  4747  4747',
                iconField: Icon(Icons.numbers_outlined),
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: CustomFormField(
                      readOnly: true,
                      title: 'Expiry date',
                      text: '07/21',
                      iconField: Icon(
                        Icons.calendar_month_outlined,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 150,
                    child: CustomFormField(
                      readOnly: true,
                      title: 'CVC',
                      text: '474',
                      iconField: Icon(
                        Icons.payment_outlined,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 43,
              ),
              CustomTextButton(
                title: 'Use This Card',
                onPressed: () {
                  Navigator.pushNamed(context, '/payment-success');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
