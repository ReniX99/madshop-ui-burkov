import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madshop_ui_burkov/widgets/widget.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 52,
        children: [
          Column(
            spacing: 8,
            children: [
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/russian_flag.png'),

                    Container(width: 1, height: 26, color: Color(0xFF1F1F1F)),
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: 'Your phone',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: FormButton(text: 'Login'),
          ),
        ],
      ),
    );
  }
}
