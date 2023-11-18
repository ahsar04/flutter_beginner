class Product {
  final int id;
  final String name;
  final String category;
  final String description;
  final double price;
  bool favorite;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.favorite,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      description: json['description'],
      price: json['price'].toDouble(),
      favorite: json['favorite'],
      imageUrl: json['imageUrl'],
    );
  }
}
