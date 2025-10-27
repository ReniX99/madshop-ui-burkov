import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 40,
        children: [
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          Column(
            spacing: 12,
            children: [
              FormButton(text: 'Login'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF202020),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
