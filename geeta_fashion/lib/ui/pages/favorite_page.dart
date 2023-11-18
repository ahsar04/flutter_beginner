import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: blackTextStyle.copyWith(
            fontWeight: black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: MediaQuery.of(context).size.height - 195.1,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: bgWhiteColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 77,
                              width: 87,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/item3.png',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 197,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Item Name',
                                    style: blueTextStyle.copyWith(
                                        fontSize: 14, fontWeight: bold),
                                    softWrap: true,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'GEETA COLLECTION',
                                    style: greyTextStyle.copyWith(
                                        fontSize: 9, fontWeight: bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$40.00',
                                        style: blackTextStyle.copyWith(
                                            fontSize: 16, fontWeight: black),
                                        softWrap: true,
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_right_alt_outlined,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  }),
            ),
            CustomTextButton(
              title: 'ADD ALL TO CART',
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            )
          ],
        ),
      ),
    );
  }
}
