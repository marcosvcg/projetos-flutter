import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/item_counter.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/utils/app_routes.dart';
import '../components/product_grid.dart';

enum FilterOptions {
  favoritesOnly,
  allItems,
}

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoritesOnly = false;

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ProductList>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Store'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favoritesOnly,
                child: Text('Favorite Only'),
              ),
              const PopupMenuItem(
                value: FilterOptions.allItems,
                child: Text('All Items'),
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favoritesOnly) {
                  // provider.showFavoritesOnly();
                  _showFavoritesOnly = true;
                } else {
                  // provider.showAllItems();
                  _showFavoritesOnly = false;
                }
              });
            },
          ),
          Consumer<Cart>(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.cart);
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            builder: (ctx, cart, child) => ItemCounter(
              value: cart.itemsCount.toString(),
              child: child!,
            ),
          ),
        ],
      ),
      body: ProductGrid(showFavoritesOnly: _showFavoritesOnly),
      drawer: const AppDrawer(), 
    );
  }
}
