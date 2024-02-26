import 'package:flutter/material.dart';
import '../model/catalog_item.dart';

class CatalogList extends StatelessWidget {
  List<CatalogItem> items = [];

  CatalogList(List<CatalogItem> items, {super.key}) {
    this.items = items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                color: items[index].color,
              ),
              const SizedBox(width: 25),
              Text(
                '${items[index].name}  -  \$${items[index].value.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: 80,
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all<Color>(CatalogItem(
                          name: items[index].name,
                          color: items[index].color,
                          id: items[index].id,
                          value: items[index].value,
                        ).color)),
                        onPressed: () {},
                        child: Text(
                          'ADD',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
