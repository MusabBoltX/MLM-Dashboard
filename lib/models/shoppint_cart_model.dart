import 'package:flutter/cupertino.dart';

class ShoppingtCart {
  final int id;
  final String product;
  final double price;
  final int quantity;
  final double subtotal;

  ShoppingtCart({
    @required this.id,
    @required this.product,
    @required this.price,
    @required this.quantity,
    @required this.subtotal,
  });
}

class ShoppingCartData {
  List<ShoppingtCart> _items = [
    ShoppingtCart(
      id: 1,
      product: "Pen",
      price: 10.0,
      quantity: 5,
      subtotal: 100.0,
    ),
    ShoppingtCart(
      id: 2,
      product: "Pencil",
      price: 20.0,
      quantity: 6,
      subtotal: 200.0,
    ),
    ShoppingtCart(
      id: 3,
      product: "Pointer",
      price: 30.0,
      quantity: 7,
      subtotal: 300.0,
    ),
  ];

  List<ShoppingtCart> get items {
    return [..._items];
  }
}
