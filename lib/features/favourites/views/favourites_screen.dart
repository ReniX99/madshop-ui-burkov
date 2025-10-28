import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:madshop_ui_burkov/data/product.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

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
          child: Text('Favourites', style: theme.textTheme.titleLarge),
        ),
      ),
      body: ProductCardList(products: favouriteProductsData),
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
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/underline_heart_icon.svg'),
            ),
            IconButton(
              onPressed: () {
                _goToPage(context: context, route: '/cart');
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
