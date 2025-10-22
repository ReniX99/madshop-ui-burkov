import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/models/product.dart';
import 'package:madshop_ui_burkov/widgets/product_image.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(
          imageUrl: product.imageUrl,
          isLiked: product.isLiked,
          isInCart: product.isInCart,
        ),
        SizedBox(height: 6),
        Text(
          product.name,
          maxLines: 2,
          style: GoogleFonts.nunitoSans(fontSize: 12),
        ),
        SizedBox(height: 2),
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: GoogleFonts.raleway(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.17,
          ),
        ),
      ],
    );
  }
}
