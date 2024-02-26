import 'dart:math';
import 'package:companion/components/catalog_list.dart';
import 'package:companion/screens/cart.dart';
import 'package:companion/store/catalog.store.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../model/catalog_item.dart';
import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CatalogStore>(context);
    final int itemCount = 21;

    List<CatalogItem> items = store.generateList(itemCount);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: CatalogList(items),
    );
  }
}
