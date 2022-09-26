import "package:flutter/material.dart";
import 'package:flutter_tut/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mera Tit le")),
      body: const Center(child: Text("Beech ka Bandar")),
      drawer: const MyDrawer(),
    );
  }
}
