import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_order_history.dart';
import 'package:ozcart/components/oz_product.dart';
import 'package:ozcart/screens/cart_screens/oz_cart_product.dart';
import 'package:ozcart/theme/palette.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 22),
            Container(
              width: double.infinity,
              child: OzOrderHistory(),
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 2.0,
              height: 4.0,
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  10,
                  (index) => OzCartProduct(
                    deletable: false,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
