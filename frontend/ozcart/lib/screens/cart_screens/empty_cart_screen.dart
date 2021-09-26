import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_nothing_found.dart';
import 'package:ozcart/components/oz_primary_button.dart';

import 'oz_cart_action.dart';

class EmptyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 80),
          OzNothingFound(title: 'Your cart is empty'),
          SizedBox(height: 49),
          Container(
            width: 174,
            child: OzPrimaryButton(
              onTap: () => Get.back(),
              text: 'Continue Shopping',
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: OzCartAction(
                onOrder: () => {
                  Get.snackbar(
                    'Empty Cart',
                    'Your cart is empty. Add items to the cart and then place your order.',
                    colorText: Colors.white,
                    backgroundColor: Colors.black.withOpacity(0.8),
                  )
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
