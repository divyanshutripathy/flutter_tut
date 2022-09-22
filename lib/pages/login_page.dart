import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("images/log.png", fit: BoxFit.cover, height: 300),
          // Instead of Padding, can even insert code in it
          // Can also use padding in the below text
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          // For text field we have text field and text form field, but form field has an advantage.
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter UserName", labelText: "UserName"),
          )
        ],
      ),
    );
  }
}
