import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_account_info.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('My Account')),
      body: ListView(
        children: [
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset("assets/edit_account.png"),
      ),
    );
  }
}
