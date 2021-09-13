import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozcart/screens/splash_screen.dart';
import 'package:ozcart/theme/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: SplashScreen(),
      title: 'OzCart',
    );
  }
}
