import 'package:flutter/material.dart';
import 'package:ozcart/screens/cart_screens/cart_with_products.dart';
import 'package:ozcart/screens/cart_screens/empty_cart_screen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: CartWithProducts(),
    );
  }
}
