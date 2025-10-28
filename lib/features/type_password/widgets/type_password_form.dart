import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class TypePasswordForm extends StatelessWidget {
  const TypePasswordForm({super.key});

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
              FormButton(text: 'Start'),
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
