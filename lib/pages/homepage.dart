import "package:flutter/material.dart";
import 'package:flutter_tut/models/catalog.dart';
import 'package:flutter_tut/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Chor Bazar Online"))),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) =>
                ItemWidget(item: CatalogModel.items[index])),
      ),
      drawer: const MyDrawer(),
    );
  }
}
