import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mukarrom/models/catalog.dart';
import 'package:mukarrom/widgets/drawer.dart';
import 'package:mukarrom/widgets/item_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => lifecycle();
}

class lifecycle extends State<Home> {
  String name = "Mukarrom";

// -> lifecycle method in flutter
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // -> load data from json with "rootBundle" library
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // -> parse json to string (decode) stringify(encode)
    var decodedData = jsonDecode(catalogJson);
  }

  @override
  Widget build(BuildContext context) {
    // -> generate items
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    // ----------- Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          // -> item_widget.dart
          return ItemWidget(
            // -> show data
            item: dummyList[index],
          );
        },
      ),
      //-------------- Drawer
      drawer: const MyDrawer(),
    );
  }
}
