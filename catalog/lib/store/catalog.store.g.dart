// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CatalogStore on _CatalogStore, Store {
  late final _$itemCountAtom =
      Atom(name: '_CatalogStore.itemCount', context: context);

  @override
  int get itemCount {
    _$itemCountAtom.reportRead();
    return super.itemCount;
  }

  @override
  set itemCount(int value) {
    _$itemCountAtom.reportWrite(value, super.itemCount, () {
      super.itemCount = value;
    });
  }

  late final _$_CatalogStoreActionController =
      ActionController(name: '_CatalogStore', context: context);

  @override
  List<CatalogItem> generateList(int itemCount) {
    final _$actionInfo = _$_CatalogStoreActionController.startAction(
        name: '_CatalogStore.generateList');
    try {
      return super.generateList(itemCount);
    } finally {
      _$_CatalogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itemCount: ${itemCount}
    ''';
  }
}
