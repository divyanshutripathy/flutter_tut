import "package:flutter/material.dart";
import 'package:flutter_tut/pages/homepage.dart';
import 'package:flutter_tut/pages/login_page.dart';

void main() {
  runApp(MeraApp());
}

class MeraApp extends StatelessWidget {
  const MeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.brown),
      darkTheme: ThemeData(brightness: Brightness.dark),
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
