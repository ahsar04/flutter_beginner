import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/models/product_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Producct',
          style: blackTextStyle.copyWith(
            fontWeight: black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: bgWhiteColor,
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
          ),
          const Text(
            '139 Items found for “Hoodies”',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA1A1A1),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ProductsList()
        ],
      ),
    );
  }
}

class ProductsList extends StatefulWidget {
  const ProductsList({
    super.key,
  });

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List<Map<String, dynamic>> dummyProducts = [
    {
      'id': 1,
      'name': 'Casual T-shirt',
      'category': 'mens',
      'description':
          'A versatile and casual T-shirt designed for comfort and style. Crafted with high-quality fabric, this T-shirt is perfect for everyday wear. Whether you\'re heading to the gym or simply hanging out with friends, this T-shirt is a wardrobe essential. The relaxed fit ensures breathability, and the classic design makes it easy to pair with jeans or shorts. Elevate your casual look with this must-have piece.',
      'price': 70.00,
      'favorite': false,
      'imageUrl': 'assets/images/product 1.png',
    },
    {
      'id': 2,
      'name': 'Jean Fit',
      'category': 'mens',
      'description':
          'Experience the perfect fit with our stylish jean fit for men. Tailored to perfection, these jeans offer both comfort and trendiness. The slim fit design complements your physique, providing a modern and fashionable look. Whether you\'re going for a casual outing or a night on the town, these jeans are a wardrobe staple. Elevate your denim collection with this versatile and chic pair.',
      'price': 68.00,
      'favorite': false,
      'imageUrl': 'assets/images/product 2.png',
    },
    {
      'id': 3,
      'name': 'Hot Pants',
      'category': 'mens',
      'description':
          'Revamp your wardrobe with these trendy hot pants that add a touch of spice to your style. The perfect blend of fashion and comfort, these pants are ideal for warm weather and casual occasions. The vibrant colors and contemporary design make a bold fashion statement. Embrace the latest trends with these hot pants that are sure to turn heads wherever you go.',
      'price': 39.90,
      'favorite': false,
      'imageUrl': 'assets/images/product 3.png',
    },
    {
      'id': 4,
      'name': 'White Shoes',
      'category': 'womens',
      'description':
          'Step into elegance with our collection of white shoes for women. Designed for both comfort and style, these shoes are a must-have in every woman\'s wardrobe. The clean and timeless white color adds a touch of sophistication to any outfit. Whether you\'re dressing up for a special occasion or heading to the office, these shoes effortlessly elevate your look.',
      'price': 49.99,
      'favorite': false,
      'imageUrl': 'assets/images/product 4.png',
    },
    {
      'id': 5,
      'name': 'Stylish Shoes',
      'category': 'womens',
      'description':
          'Indulge in comfort and style with our collection of stylish shoes for women. These shoes are crafted with attention to detail, ensuring both durability and fashion-forward design. The versatility of these shoes allows you to pair them with various outfits, from casual to dressy. Elevate your footwear collection with these chic and trendy shoes.',
      'price': 49.99,
      'favorite': false,
      'imageUrl': 'assets/images/product 5.png',
    },
    {
      'id': 6,
      'name': 'Casual Wear',
      'category': 'womens',
      'description':
          'Discover the perfect balance of comfort and style with our collection of casual wear for women. Designed for a relaxed and laid-back look, these pieces are perfect for weekend outings or casual hangouts. The soft and breathable fabrics ensure all-day comfort, while the modern designs keep you on-trend. Embrace the casual chic vibe with our versatile and comfortable casual wear.',
      'price': 42.99,
      'favorite': false,
      'imageUrl': 'assets/images/product 6.png',
    },
    {
      'id': 7,
      'name': 'Chic Shirt',
      'category': 'womens',
      'description':
          'Make a style statement with our chic shirt for women. Perfect for both casual and formal occasions, this shirt exudes sophistication and elegance. The tailored fit and high-quality fabric make it a wardrobe essential for the modern woman. Whether paired with jeans for a casual look or tucked into a skirt for a polished appearance, this chic shirt adds a touch of refinement to any ensemble.',
      'price': 99.99,
      'favorite': false,
      'imageUrl': 'assets/images/product 7.png',
    },
    {
      'id': 8,
      'name': 'Comfortable Hoodie',
      'category': 'womens',
      'description':
          'Stay cozy and stylish with our comfortable hoodie for women. This hoodie is crafted from a soft and warm fabric, making it perfect for chilly days. The relaxed fit provides ease of movement, while the hood adds an extra layer of comfort. Whether you are lounging at home or running errands, this hoodie is a versatile addition to your casual wardrobe.',
      'price': 59.99,
      'favorite': false,
      'imageUrl': 'assets/images/product 8.png',
    },
  ];

  late List<Product> dummyProductsModels =
      dummyProducts.map((e) => Product.fromJson(e)).toList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 182,
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 14,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        children: List<Widget>.generate(
          dummyProducts.length,
          (index) {
            Product item = dummyProductsModels[index];
            return GridTile(
              child: Stack(
                // alignment: Alignment.center,
                children: [
                  Column(children: [
                    Hero(
                      tag: item.id,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: bgWhiteColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                item.imageUrl,
                              ),
                              height: 133,
                              width: 92,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Column(
                      children: [
                        Text(
                          item.name,
                          style: blackTextStyle.copyWith(
                            fontWeight: black,
                            fontSize: 14,
                          ),
                          softWrap: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$${item.price.toString()}",
                          style: greyTextStyle.copyWith(
                            fontWeight: black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            item.favorite = !item.favorite;
                          });
                        },
                        icon: item.favorite == false
                            ? const Icon(Icons.favorite_border_outlined)
                            : const Icon(Icons.favorite),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailData {
  final int id;
  final String name;
  final String price;
  bool favorite;
  final String desc;
  final String imgUrl;
  final String category;
  DetailData(this.id, this.name, this.price, this.favorite, this.desc,
      this.imgUrl, this.category);
}
