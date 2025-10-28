import 'package:go_router/go_router.dart';
import 'package:madshop_ui_burkov/features/cart/views/cart_screen.dart';
import 'package:madshop_ui_burkov/features/create_account/create_account.dart';
import 'package:madshop_ui_burkov/features/favourites/views/view.dart';
import 'package:madshop_ui_burkov/features/login/login.dart';
import 'package:madshop_ui_burkov/features/shop/shop.dart';
import 'package:madshop_ui_burkov/features/splash/splash.dart';
import 'package:madshop_ui_burkov/features/type_password/views/type_password_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/shop', builder: (context, _) => ShopScreen()),
    GoRoute(path: '/favourites', builder: (context, _) => FavouritesScreen()),
    GoRoute(path: '/cart', builder: (context, _) => CartScreen()),
    GoRoute(path: '/splash', builder: (context, _) => SplashScreen()),
    GoRoute(
      path: '/create-account',
      builder: (context, _) => CreateAccountScreen(),
    ),
    GoRoute(path: '/login', builder: (context, _) => LoginScreen()),
    GoRoute(
      path: '/type-password',
      builder: (context, _) => TypePasswordScreen(),
    ),
  ],
  initialLocation: '/splash',
);
