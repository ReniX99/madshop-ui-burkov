import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class TypePasswordForm extends StatelessWidget {
  const TypePasswordForm({super.key});

  void _goToPreviousPage({required BuildContext context}) {
    context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(height: 80),
          Column(
            spacing: 12,
            children: [
              FormButton(text: 'Start', route: '/shop'),
              TextButton(
                onPressed: () {
                  _goToPreviousPage(context: context);
                },
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
