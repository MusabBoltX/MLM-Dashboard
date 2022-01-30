import 'package:flutter/cupertino.dart';

class Product {
  final int id;
  final String url, title, category;
  final double price;

  Product({
    @required this.id,
    @required this.price,
    @required this.url,
    @required this.title,
    @required this.category,
  });
}

class ProductData {
  List<Product> _products = [
    Product(
      category: "Category 1",
      title: "Product 1",
      url: "assets/images/cart.jpg",
      id: 1,
      price: 100.0,
    ),
    Product(
      category: "Category 2",
      title: "Product 2",
      url: "assets/images/cart.jpg",
      id: 1,
      price: 200.0,
    ),
    Product(
      category: "Category 3",
      title: "Product 3",
      url: "assets/images/cart.jpg",
      id: 1,
      price: 300.0,
    ),
  ];

  List<Product> get products {
    return [..._products];
  }
}
