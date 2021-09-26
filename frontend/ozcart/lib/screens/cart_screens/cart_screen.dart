import 'package:flutter/material.dart';
import 'package:ozcart/screens/cart_screens/empty_cart_screen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('My Cart')),
      body: EmptyCartScreen(),
    );
  }
}
