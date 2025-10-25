import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/models/cart_product.dart';
import 'cart_image.dart';

class CartListItem extends StatelessWidget {
  final CartProduct cartProduct;

  const CartListItem({super.key, required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      child: Row(
        spacing: 10,
        children: [
          CartImage(imageUrl: cartProduct.imageUrl),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartProduct.name, style: GoogleFonts.nunitoSans()),
                SizedBox(height: 5),
                Text(
                  '${cartProduct.color}, Size ${cartProduct.size}',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: -0.14,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${cartProduct.price.toStringAsFixed(2)}',
                            style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF202020),
                              letterSpacing: -0.18,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                              spacing: 6,
                              children: [
                                SizedBox(
                                  width: 30,
                                  child: IconButton(
                                    onPressed: () {},
                                    style: IconButton.styleFrom(
                                      side: BorderSide(
                                        color: Color(0xFF004BFE),
                                        width: 2,
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      'assets/svg/minus_icon.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentGeometry.center,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE5EBFC),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.18,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                  child: IconButton(
                                    onPressed: () {},
                                    style: IconButton.styleFrom(
                                      side: BorderSide(
                                        color: Color(0xFF004BFE),
                                        width: 2,
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      'assets/svg/plus_icon.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
