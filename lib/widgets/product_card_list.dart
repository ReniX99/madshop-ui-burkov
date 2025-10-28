import 'package:flutter/material.dart';
import 'package:madshop_ui_burkov/models/product.dart';
import 'package:madshop_ui_burkov/widgets/product_card.dart';

class ProductCardList extends StatelessWidget {
  final List<Product> products;

  const ProductCardList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 5,
      childAspectRatio: 0.67,
      children: List.generate(
        products.length,
        (index) => ProductCard(product: products[index]),
      ),
    );
  }
}
