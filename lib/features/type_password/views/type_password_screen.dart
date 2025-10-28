import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/features/type_password/widgets/type_password_form.dart';
import 'package:madshop_ui_burkov/theme/colors.dart';

class TypePasswordScreen extends StatelessWidget {
  const TypePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(child: Image.asset('assets/images/bubble_l_1.png')),
          Positioned(child: Image.asset('assets/images/bubble_l_2.png')),
          Padding(
            padding: const EdgeInsetsGeometry.only(
              top: 256,
              left: 20,
              right: 20,
              bottom: 64,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 30,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hello!',
                      style: GoogleFonts.raleway(
                        color: AppColors.primary,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.28,
                      ),
                    ),
                    Text(
                      'Type your password',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const TypePasswordForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
