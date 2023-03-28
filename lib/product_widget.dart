import 'package:flutter/material.dart';
import 'package:listview_practice/product_list_tile.dart';
import 'package:listview_practice/products.dart';

class ProductsWidget extends StatelessWidget {
  final List<Products> products;
  const ProductsWidget({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, index) {
            return ProductListTile(products[index]);
          }),
    );
  }
}
