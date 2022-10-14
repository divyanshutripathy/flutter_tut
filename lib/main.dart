import "package:flutter/material.dart";
import 'package:flutter_tut/pages/homepage.dart';
import 'package:flutter_tut/pages/login_page.dart';
import 'package:flutter_tut/widgets/theme.dart';

void main() {
  runApp(const MeraApp());
}

class MeraApp extends StatelessWidget {
  const MeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // Default initial route is "/", but can change it using this:
      initialRoute: "/home",
      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
