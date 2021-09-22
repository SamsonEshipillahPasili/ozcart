import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_input_field.dart';
import 'package:ozcart/components/oz_password_field.dart';
import 'package:ozcart/components/primary_button.dart';
import 'package:ozcart/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OzCart"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              OzPrimaryButton(text: "Login"),
              SizedBox(height: 59),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.off(RegisterScreen());
                  },
                  child: Text(
                    "Don't have an account? Register",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
