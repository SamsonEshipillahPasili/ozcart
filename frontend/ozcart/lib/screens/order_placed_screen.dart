import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/screens/home_screen.dart';
import 'package:ozcart/theme/palette.dart';

class OrderPlacedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order Placed Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 22),
            Text('Order Placed!', style: Theme.of(context).textTheme.headline1),
            SizedBox(height: 42),
            Container(
              decoration: BoxDecoration(
                color: lightGrey,
                border: Border(
                  left: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 20,
                  ),
                ),
              ),
              height: 144,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 6),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ORDER: #SLANADASAGERGE',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 9),
                    Text(
                      'Congratulations!',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 9),
                    Text(
                      'Your order has been received. '
                      'You will get text notifications about the status '
                      'of your order. Expect the delivery in 2 - 3 days',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 42),
            OzPrimaryButton(
              text: 'Home',
              onTap: () => Get.to(() => HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
