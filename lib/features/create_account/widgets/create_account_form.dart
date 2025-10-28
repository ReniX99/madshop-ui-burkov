import 'package:flutter/material.dart';
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
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                cursorColor: Colors.black,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/russian_flag.png'),

                    Container(
                      width: 1,
                      height: 26,
                      color: const Color(0xFF1F1F1F),
                    ),
                    Expanded(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
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
            child: const FormButton(text: 'Done', route: '/login'),
          ),
        ],
      ),
    );
  }
}
