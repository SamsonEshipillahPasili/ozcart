import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/screens/cart_screens/oz_cart_product.dart';

import 'oz_cart_action.dart';

class CartWithProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              children: List.generate(
                10,
                (index) => OzCartProduct(),
              ),
            ),
          ),
          OzCartAction(
            onOrder: () => {
              Get.snackbar(
                'Order Status',
                'Placing orders is coming soon!',
                colorText: Colors.white,
                backgroundColor: Colors.black.withOpacity(0.8),
              )
            },
          ),
        ],
      ),
    );
  }
}
