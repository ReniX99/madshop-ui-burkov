import 'package:go_router/go_router.dart';
import 'package:madshop_ui_burkov/features/favourites/views/view.dart';
import 'package:madshop_ui_burkov/features/shop/shop.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/shop', builder: (context, _) => ShopScreen()),
    GoRoute(path: '/favourites', builder: (context, _) => FavouritesScreen()),
  ],
  initialLocation: '/favourites',
);
