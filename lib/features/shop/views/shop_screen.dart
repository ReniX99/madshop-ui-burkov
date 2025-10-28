import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/data/product.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  void _goToPage({required String route}) {
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Text('Shop', style: theme.textTheme.titleLarge),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 19),
                  decoration: BoxDecoration(
                    color: Color(0xFFE5EBFC),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.only(top: 9, left: 18, bottom: 8),
                  child: Text(
                    'Clothing',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Color(0xFF0042E0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ProductCardList(products: productsData),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 28, right: 28, bottom: 36, top: 12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -1),
              blurRadius: 1,
              blurStyle: BlurStyle.outer,
              color: Color(0x29000000),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/underline_home_icon.svg'),
            ),

            IconButton(
              onPressed: () {
                _goToPage(route: '/favourites');
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
              onPressed: () {
                _goToPage(route: '/cart');
              },
              icon: SvgPicture.asset(
                'assets/svg/cart.svg',
                colorFilter: ColorFilter.mode(
                  Color(0xFF004CFF),
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
