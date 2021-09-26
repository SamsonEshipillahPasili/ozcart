import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_account_info.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/screens/edit_account_screen.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('My Account')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            SizedBox(height: 40),
            OzAccountInfo(
              heading: 'sam@gmail.com',
              subHeading: 'Email',
            ),
            OzAccountInfo(
              heading: 'UNKNOWN',
              subHeading: 'First Name',
            ),
            OzAccountInfo(
              heading: 'UNKNOWN',
              subHeading: 'Middle Name',
            ),
            OzAccountInfo(
              heading: 'UNKNOWN',
              subHeading: 'Last Name',
            ),
            OzAccountInfo(
              heading: 'UNKNOWN',
              subHeading: 'Phone Number',
            ),
            SizedBox(height: 20),
            OzPrimaryButton(
              text: 'Edit',
              onTap: () => Get.to(() => EditAccountScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
