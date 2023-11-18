import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/pages/home_page.dart';
import 'package:geeta/ui/widgets/button.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});
  static const routeName = '/product-detail';

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late int qty = 1;
  late int size = -1;
  @override
  Widget build(BuildContext context) {
    final itemData = ModalRoute.of(context)!.settings.arguments as DetailData;
    return Scaffold(
      backgroundColor: bgWhiteColor,
      appBar: AppBar(
        backgroundColor: bgWhiteColor,
        actions: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                setState(() {
                  itemData.favorite = !itemData.favorite;
                });
              },
              icon: itemData.favorite == false
                  ? const Icon(Icons.favorite_border_outlined)
                  : const Icon(Icons.favorite),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 179.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Hero(
                      tag: itemData.id,
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            itemData.imgUrl,
                          ),
                          height: 200,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      constraints: const BoxConstraints(
                          minHeight: 430, minWidth: double.infinity),
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Geeta ${itemData.category}',
                            style: blackTextStyle.copyWith(
                              fontWeight: reguler,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                itemData.name,
                                style: blackTextStyle.copyWith(
                                  fontWeight: black,
                                  fontSize: 24,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "\$${itemData.price}",
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starInActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '(4.5)',
                                style: greyTextStyle.copyWith(
                                  fontWeight: reguler,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(color: bgGreyColor)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              LinearBorder.none),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            qty > 1 ? qty-- : qty;
                                          });
                                        },
                                        child: Text(
                                          '-',
                                          style: blackTextStyle.copyWith(
                                              fontWeight: bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      qty.toString(),
                                      style: blackTextStyle.copyWith(
                                          fontWeight: black, fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              LinearBorder.none),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            qty++;
                                          });
                                        },
                                        child: Text(
                                          '+',
                                          style: blackTextStyle.copyWith(
                                              fontWeight: bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 46,
                                width: 46,
                                decoration: BoxDecoration(
                                    color: bgWhiteColor,
                                    borderRadius: BorderRadius.circular(50)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          Text(
                            'DESCRIPTION',
                            style: blackTextStyle.copyWith(
                              fontWeight: extraBold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            itemData.desc,
                            style: greyTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'SELECT SIZE',
                            style: blackTextStyle.copyWith(
                              fontWeight: extraBold,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: size == 1
                                        ? MaterialStatePropertyAll(blueColor)
                                        : MaterialStatePropertyAll(
                                            bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      size = 1;
                                    });
                                  },
                                  child: Text('S',
                                      style: size == 1
                                          ? whiteTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )
                                          : blackTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: size == 2
                                        ? MaterialStatePropertyAll(blueColor)
                                        : MaterialStatePropertyAll(
                                            bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      size = 2;
                                    });
                                  },
                                  child: Text('M',
                                      style: size == 2
                                          ? whiteTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )
                                          : blackTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: size == 3
                                        ? MaterialStatePropertyAll(blueColor)
                                        : MaterialStatePropertyAll(
                                            bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      size = 3;
                                    });
                                  },
                                  child: Text('L',
                                      style: size == 3
                                          ? whiteTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )
                                          : blackTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: size == 4
                                        ? MaterialStatePropertyAll(blueColor)
                                        : MaterialStatePropertyAll(
                                            bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      size = 4;
                                    });
                                  },
                                  child: Text('XL',
                                      style: size == 4
                                          ? whiteTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )
                                          : blackTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )),
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: size == 5
                                        ? MaterialStatePropertyAll(blueColor)
                                        : MaterialStatePropertyAll(
                                            bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      size = 5;
                                    });
                                  },
                                  child: Text('XXL',
                                      style: size == 5
                                          ? whiteTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )
                                          : blackTextStyle.copyWith(
                                              fontWeight: reguler,
                                              fontSize: 13,
                                            )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: whiteColor,
              child: CustomTextButton(
                hight: 54,
                title: 'ADD TO CART',
                onPressed: () {
                  size == -1
                      ? ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                          content: Text("Select size"),
                          duration: Duration(milliseconds: 500),
                        ))
                      : Navigator.pushNamed(context, "/cart");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
