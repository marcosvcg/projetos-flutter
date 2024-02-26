import 'package:flutter/material.dart';

class CatalogItem {
  final String name;
  String? id;
  final Color color;
  final double value;

  CatalogItem({
    required this.name,
    this.id,
    required this.color,
    required this.value,
  });
}
