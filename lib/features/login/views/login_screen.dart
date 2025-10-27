import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/features/login/widgets/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(child: Image.asset('assets/images/bubble_l_1.png')),
          Positioned(child: Image.asset('assets/images/bubble_l_2.png')),
          Positioned(
            top: 224,
            right: 0,
            child: Image.asset('assets/images/bubble_l_3.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/bubble_l_4.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: GoogleFonts.raleway(
                    color: Color(0xFF202020),
                    fontSize: 52,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.52,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      'Good to see you back!',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF202020),
                      ),
                    ),
                    Icon(Icons.favorite, size: 20),
                  ],
                ),
                SizedBox(height: 24),
                LoginForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
