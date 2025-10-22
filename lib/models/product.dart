class Product {
  Product({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isLiked = false,
    this.isInCart = false,
  });

  final int id;
  final String imageUrl;
  final String name;
  final double price;
  bool isLiked;
  bool isInCart;
}
