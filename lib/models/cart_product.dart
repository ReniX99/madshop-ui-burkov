class CartProduct {
  CartProduct({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
    required this.count,
  });

  final int id;
  final String imageUrl;
  final String name;
  final String color;
  final String size;
  final double price;
  final int count;
}
