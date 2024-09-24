import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class SeparatedListViewListContent extends StatelessWidget {
  const SeparatedListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListEntry(product: products[index]),
              const SizedBox(height: 16),
            ],
          );
        });
  }
}// Hier soll eine ListView zurückgegeben werden.
