import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_dropdown.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_primary_button.dart';

// https://pub.dev/packages/dropdown_plus

class PickupStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fieldSpacer = SizedBox(height: 34);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order - Pickup Station'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 55),
            OzDropDown(label: 'Select your city'),
            fieldSpacer,
            OzDropDown(label: 'Select your pickup station'),
            fieldSpacer,
            OzPrimaryButton(text: 'Continue', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
