import 'package:flutter/material.dart';
import 'package:lab_3/components/item_tile.dart';
import 'package:lab_3/data.dart';
import 'package:lab_3/screens/shop.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: storeItems.length,
            itemBuilder: (context, index) {
              return ItemTile(
                item: storeItems.elementAt(index),
              );
            }),
      ),
    );
  }
}
