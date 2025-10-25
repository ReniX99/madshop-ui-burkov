import 'package:flutter/material.dart';
import 'package:madshop_ui_burkov/data/cart_product.dart';

import 'cart_list_item.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cartProductsData.length,
      padding: EdgeInsets.only(left: 28, right: 28, top: 100, bottom: 40),
      itemBuilder: (context, i) =>
          CartListItem(cartProduct: cartProductsData[i]),
      separatorBuilder: (context, _) => SizedBox(height: 14),
    );
  }
}
