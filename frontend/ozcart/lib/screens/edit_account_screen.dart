import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_primary_button.dart';

class EditAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fieldSpacer = SizedBox(height: 34);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Edit My Account'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 55),
            OzInputField(
              hintText: 'First Name',
            ),
            fieldSpacer,
            OzInputField(
              hintText: 'Middle Name',
            ),
            fieldSpacer,
            OzInputField(
              hintText: 'Last Name',
            ),
            fieldSpacer,
            OzInputField(
              hintText: 'Phone Number',
              keyboardType: TextInputType.phone,
            ),
            fieldSpacer,
            OzPrimaryButton(text: 'Save', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
