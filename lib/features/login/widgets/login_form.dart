import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  void _goToPreviousPage({required BuildContext context}) {
    context.go('/create-account');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 40,
        children: [
          TextFormField(
            cursorColor: Colors.black,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          Column(
            spacing: 12,
            children: [
              const FormButton(text: 'Login', route: '/type-password'),
              TextButton(
                onPressed: () {
                  _goToPreviousPage(context: context);
                },
                child: Text(
                  'Cancel',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF202020),
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
