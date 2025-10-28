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
    GoRoute(path: '/shop', builder: (context, _) => const ShopScreen()),
    GoRoute(
      path: '/favourites',
      builder: (context, _) => const FavouritesScreen(),
    ),
    GoRoute(path: '/cart', builder: (context, _) => const CartScreen()),
    GoRoute(path: '/splash', builder: (context, _) => const SplashScreen()),
    GoRoute(
      path: '/create-account',
      builder: (context, _) => const CreateAccountScreen(),
    ),
    GoRoute(path: '/login', builder: (context, _) => const LoginScreen()),
    GoRoute(
      path: '/type-password',
      builder: (context, _) => const TypePasswordScreen(),
    ),
  ],
  initialLocation: '/splash',
);
