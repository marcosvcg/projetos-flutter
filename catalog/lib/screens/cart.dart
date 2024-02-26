import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Color darkRed = Theme.of(context).colorScheme.primary;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(color: darkRed),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.redAccent[700]),
        actions: [
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      backgroundColor: darkRed,
      body: null,
    );
  }
}
