import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_tut/models/catalog.dart';
import 'package:flutter_tut/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> jsonData = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    // Delay to simulate network delay when calling data from API.
    await Future.delayed(const Duration(seconds: 2));
    var catalogJSON = await rootBundle.loadString("data/items.json");
    var decodedData = jsonDecode(catalogJSON);
    var finalData = decodedData["items"];
    /* 
    For some reasong though finalData is already a list, we need to use
    List.from(finalData), map works the same way it does in python, applies the function
    to each element, the <Item> after the map, ensures the compiler that the type being returned
    after the application of map function is of the class Item, removing it won't change anything,
    just that jsonData won't be of type List<Item>, but of List<dynamic>, as now the compiler isn't sure.
    */
    jsonData =
        List.from(finalData).map<Item>((item) => Item.fromMap(item)).toList();
    // Setstate to call build once more, after the data is loaded.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(30, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Chor Bazar Online"))),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: jsonData.isNotEmpty
            ? ListView.builder(
                itemCount: jsonData.length,
                itemBuilder: (context, index) =>
                    ItemWidget(item: jsonData[index]))
            : const Center(child: CircularProgressIndicator()),
      ),
      drawer: const MyDrawer(),
    );
  }
}
