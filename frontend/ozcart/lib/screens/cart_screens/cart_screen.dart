import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_nothing_found.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/screens/cart_screens/empty_cart_screen.dart';
import 'package:ozcart/screens/cart_screens/oz_cart_action.dart';

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
