import 'package:flutter/material.dart';
import 'package:madshop_ui_burkov/router/router.dart';
import 'package:madshop_ui_burkov/theme/theme.dart';

class MadShopApp extends StatelessWidget {
  const MadShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router, theme: theme);
  }
}
