import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 145,
            ),
            Container(
              height: 156,
              width: 176,
              child: Center(
                child: Image.asset('assets/cart1.png'),
              ),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Text(
              "OzCart",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    );
  }
}
