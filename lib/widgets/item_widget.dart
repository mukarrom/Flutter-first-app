import 'package:flutter/material.dart';
import 'package:mukarrom/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // -> import items data from catalog.dart
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // => show multiple data in list formate
    return Card(
      child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          // -> left first div
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          // -> last part of ListTile in right side
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.3,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          )),
    );
  }
}
