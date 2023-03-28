import 'package:flutter/material.dart';
import 'package:listview_practice/product_widget.dart';
import 'package:listview_practice/products.dart';

class MylistView extends StatefulWidget {
  final String title;
  const MylistView({required this.title, super.key});

  @override
  State<MylistView> createState() => _MylistViewState();
}

class _MylistViewState extends State<MylistView> {
  List<Products> products = [
    Products(
      title: 'Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Fruit Chatt',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Shwarma',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Microni',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nuggets',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Samosy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Chicken Piece',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
    Products(
      title: 'Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Fruit Chatt',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Shwarma',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Microni',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nuggets',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Samosy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Chicken Piece',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
    Products(
      title: 'Burger',
      price: 999.99,
      description: 'I Lub Zinger Burger',
      imageAssetPath: 'assets/images/burger.jpg',
    ),
    Products(
      title: 'Pizza',
      price: 2499.99,
      description: 'Nawabi Pizza is so spicy',
      imageAssetPath: 'assets/images/pizza.jpg',
    ),
    Products(
      title: 'Pasta',
      price: 1199.99,
      description: 'Saim like Pasta',
      imageAssetPath: 'assets/images/pasta.jpg',
    ),
    Products(
      title: 'Fruit Chatt',
      price: 299.99,
      description: 'Fruit Chatt is good food for old people',
      imageAssetPath: 'assets/images/fruit_chat.jpg',
    ),
    Products(
      title: 'Shwarma',
      price: 149.99,
      description:
          'Majority Students take Shwarma at mid night when they are working on a project',
      imageAssetPath: 'assets/images/shwarma.jpg',
    ),
    Products(
      title: 'Microni',
      price: 1000.00,
      description: 'Mummy Daddy Bchy eat microni hahahaha',
      imageAssetPath: 'assets/images/microni.jpg',
    ),
    Products(
      title: 'Nuggets',
      price: 999.99,
      description: 'Children eat nuggets',
      imageAssetPath: 'assets/images/nuggets.jpg',
    ),
    Products(
      title: 'Samosy',
      price: 99.99,
      description: 'Maximum youngester take samosy',
      imageAssetPath: 'assets/images/samosy.jpg',
    ),
    Products(
      title: 'Chicken Piece',
      price: 750.00,
      description: 'I don\'t like chicken piece',
      imageAssetPath: 'assets/images/chicken_piece.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: ProductsWidget(products: products),
    );
  }
}
