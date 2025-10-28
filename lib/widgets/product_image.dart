import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  final bool isLiked;
  final bool isInCart;

  const ProductImage({
    super.key,
    required this.imageUrl,
    required this.isLiked,
    required this.isInCart,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 10,
              color: const Color(0x1A000000),
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 8,
              top: 6,
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/heart.svg',
                colorFilter: ColorFilter.mode(
                  isLiked ? Colors.red : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Positioned(
              left: 7,
              bottom: 10,
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/svg/cart.svg',
                colorFilter: ColorFilter.mode(
                  isInCart ? Colors.black : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
