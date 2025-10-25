import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/data/cart_product.dart';
import 'package:madshop_ui_burkov/features/cart/widgets/widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 4),
          child: Row(
            spacing: 8,
            children: [
              Text('Cart', style: theme.textTheme.titleLarge),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFFE5EBFC),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  '${cartProductsData.length}',
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: CartList(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 28, right: 28, bottom: 36, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/home_icon.svg',
                colorFilter: ColorFilter.mode(
                  Color(0xFF004CFF),
                  BlendMode.srcIn,
                ),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/heart.svg',
                colorFilter: ColorFilter.mode(
                  Color(0xFF004CFF),
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/underline_cart_icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
