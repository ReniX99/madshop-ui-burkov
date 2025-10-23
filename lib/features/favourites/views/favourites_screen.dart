import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

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
      body: ProductCardList(),
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
              icon: SvgPicture.asset('assets/svg/underline_heart_icon.svg'),
            ),
            IconButton(
              onPressed: () {},
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
