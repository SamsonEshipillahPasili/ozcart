import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ozcart/screens/edit_account_screen.dart';
import 'package:ozcart/screens/home_screen.dart';
import 'package:ozcart/screens/login_screen.dart';
import 'package:ozcart/screens/product_detail_screen.dart';
import 'package:ozcart/screens/register_screen.dart';
import 'package:ozcart/screens/splash_screen.dart';
import 'package:ozcart/theme/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      home: ProductDetailsScreen(),
      title: 'OzCart',
    );
  }
}
