import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozcart/components/oz_nothing_found.dart';
import 'package:ozcart/components/oz_product.dart';
import 'package:ozcart/components/oz_search_field.dart';
import 'package:ozcart/screens/cart_screens/cart_screen.dart';
import 'package:ozcart/theme/palette.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.3)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 25),
                  OzSearchField(),
                  SizedBox(height: 37),
                  Align(
                    child: Text(
                      'View products',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            // todo:  SizedBox(height: 50),
            // todo: OzNothingFound(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                children: List.generate(10, (index) => OzProduct()),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => CartScreen()),
        child: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
