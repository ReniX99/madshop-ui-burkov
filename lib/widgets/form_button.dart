import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButton extends StatelessWidget {
  final String text;
  final String route;

  const FormButton({super.key, required this.text, required this.route});

  void _goToNextPage(BuildContext context) {
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF004CFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {
          _goToNextPage(context);
        },
        child: Text(
          text,
          style: GoogleFonts.nunitoSans(
            color: const Color(0xFFF3F3F3),
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
