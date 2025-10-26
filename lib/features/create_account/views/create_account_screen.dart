import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/features/create_account/widgets/widget.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset('assets/images/bubble_ca_1.png'),
          ),
          Positioned(
            right: 0,
            top: 40,
            child: Image.asset('assets/images/bubble_ca_2.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 102, bottom: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.raleway(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CreateAccountForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
