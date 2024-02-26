import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
import '../model/catalog_item.dart';

part 'catalog.store.g.dart';

class CatalogStore = _CatalogStore with _$CatalogStore;

abstract class _CatalogStore with Store {

  @observable
  int itemCount = 1;

  @action
  List<CatalogItem> generateList(int itemCount) {
    final random = Random();
    String id = const Uuid().v4();
    List<CatalogItem> itemList = [];

    for (int i = 1; i < itemCount; i++) {
      double value = random.nextDouble() * 100;
      Color randomColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );

      itemList.add(
        CatalogItem(name: 'Item $i', color: randomColor, id: id, value: value),
      );
    }
    return itemList;
  }
}