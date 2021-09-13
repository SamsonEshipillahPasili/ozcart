import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_password_field.dart';
import 'package:ozcart/components/primary_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26),
              Text(
                'OzCart',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 56),
              Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(height: 62),
              OzInputField(),
              SizedBox(height: 37),
              OzPasswordField(),
              SizedBox(height: 37),
              OzPrimaryButton(),
            ],
          ),
        ),
      ),
    );
  }
}
