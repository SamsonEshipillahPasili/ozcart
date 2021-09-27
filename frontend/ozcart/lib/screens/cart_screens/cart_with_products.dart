import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/screens/cart_screens/oz_cart_product.dart';
import 'package:ozcart/screens/order_personal_details.dart';

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
            onOrder: () => Get.to(() => OrderPersonalDetails()),
          ),
        ],
      ),
    );
  }
}
