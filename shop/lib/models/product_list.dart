import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems => _items.where((product) => product.isFavorite).toList();

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

// Codigo para gerenciar o estado na app inteira:

// bool _showFavoritesOnly = false;

//   List<Product> get items {
//     if(_showFavoritesOnly) {
//       return _items.where((product) => product.isFavorite).toList();
//     }
    
//     return [..._items];
//   }

//   void addProduct(Product product) {
//     _items.add(product);
//     notifyListeners();
//   }

//   void showFavoritesOnly() {
//     _showFavoritesOnly = true;
//     notifyListeners();
//   }

//   void showAllItems() {
//     _showFavoritesOnly = false;
//     notifyListeners();
//   }
// }
