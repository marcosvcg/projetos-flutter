import 'package:companion/screens/catalog.dart';
import 'package:companion/store/catalog.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const CatalogApp());

class CatalogApp extends StatefulWidget {
  const CatalogApp({super.key});

  @override
  State<CatalogApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CatalogApp> {
  @override
  Widget build(BuildContext context) {
    final ThemeData appTheme = ThemeData();

    return MaterialApp(
      title: 'Catalog',
      theme: appTheme.copyWith(
        colorScheme: appTheme.colorScheme.copyWith(
          primary: Colors.redAccent[700],
          secondary: Colors.black,
        ),
        textTheme: appTheme.textTheme.copyWith(
            titleLarge: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            labelLarge: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Comfortaa',
            fontSize: 28,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: const Scaffold(
        body: Catalog(),
      ),
    );
  }
}
