import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButton extends StatelessWidget {
  final String text;

  const FormButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF004CFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.nunitoSans(color: Color(0xFFF3F3F3), fontSize: 22),
        ),
      ),
    );
  }
}
