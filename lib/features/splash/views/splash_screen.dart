import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () => context.go('/create-account'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 330,
          height: 330,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(1000),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 8,
                color: Color(0x20000000),
              ),
            ],
          ),
          child: Image.asset('assets/images/splash_screen.png'),
        ),
      ),
    );
  }
}
