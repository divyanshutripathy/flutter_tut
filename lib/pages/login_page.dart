import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/log.png", fit: BoxFit.cover, height: 200),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Username", labelText: "Enter Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password", labelText: "Enter Password"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(236, 137, 131, 105),
                  minimumSize: const Size(150, 40)),
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
