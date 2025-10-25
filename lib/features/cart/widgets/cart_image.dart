import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartImage extends StatelessWidget {
  final String imageUrl;

  const CartImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 10,
            offset: Offset(0, 5),
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
                alignment: AlignmentGeometry.topCenter,
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            width: 35,
            height: 35,
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(backgroundColor: Colors.white),
              icon: SvgPicture.asset('assets/svg/bin_icon.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
