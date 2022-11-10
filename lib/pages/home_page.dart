import 'package:flutter/material.dart';
import 'package:mukarrom/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Mukarrom";
    // ----------- Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mukarrom"),
      ),
      body: Center(child: Text("Hello $name")),
      //-------------- Drawer
      drawer: const MyDrawer(),
    );
  }
}
