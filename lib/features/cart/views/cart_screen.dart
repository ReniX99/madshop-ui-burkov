import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/data/cart_product.dart';
import 'package:madshop_ui_burkov/features/cart/widgets/widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void _goToPage({required BuildContext context, required String route}) {
    context.go(route);
  }

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
      body: Stack(
        children: [
          CartList(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xFFF5F5F5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        '\$34.00',
                        style: GoogleFonts.raleway(
                          color: Color(0xFF202020),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.18,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(128, 40),
                      backgroundColor: Color(0xFF004CFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xFFF3F3F3),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 28, right: 28, bottom: 36, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                _goToPage(context: context, route: '/shop');
              },
              icon: SvgPicture.asset(
                'assets/svg/home_icon.svg',
                colorFilter: ColorFilter.mode(
                  Color(0xFF004CFF),
                  BlendMode.srcIn,
                ),
              ),
            ),

            IconButton(
              onPressed: () {
                _goToPage(context: context, route: '/favourites');
              },
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
