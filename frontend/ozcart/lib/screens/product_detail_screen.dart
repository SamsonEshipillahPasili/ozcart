import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_dropdown.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/screens/cart_screens/cart_screen.dart';
import 'package:ozcart/screens/order_payment.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fieldSpacer = SizedBox(height: 34);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 22),
            Image.asset('assets/cup_large.png'),
            Text(
              'DKRANR JUG',
              style: Theme.of(context).textTheme.headline6!.merge(
                    TextStyle(
                      color: Color(0xff6D6D6D),
                    ),
                  ),
            ),
            SizedBox(height: 22),
            Text('KSH.15,995', style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 22),
            Text('This is a very fantastic product. '
                'You cannot live without this one! '
                'It has amazing features.'),
            SizedBox(height: 45),
            OzPrimaryButton(text: 'Add To Cart', onTap: () {})
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => CartScreen()),
        child: Image.asset('assets/cart2.png'),
      ),
    );
  }
}
