import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/theme/palette.dart';

class OrderPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fieldSpacer = SizedBox(height: 34);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Order - Payment')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 55),
            OzInputField(hintText: 'Enter your MPESA number'),
            SizedBox(height: 29),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info, color: accentColor),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'This is the number you will use'
                    ' for payment. You will receive a '
                    'prompt on this number '
                    'to make the payment.',
                  ),
                )
              ],
            ),
            SizedBox(height: 44),
            OzPrimaryButton(text: 'Continue', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
