import 'package:flutter/material.dart';
import 'package:listview_practice/products.dart';

class ProductListTile extends ListTile {
  final Products _products;
  ProductListTile(this._products, {super.key})
      : super(
          leading: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(_products.imageAssetPath),
          ),
          title: Text(_products.title),
          subtitle: Text(_products.description),
          trailing: Text('${_products.price}'),
        );
}
