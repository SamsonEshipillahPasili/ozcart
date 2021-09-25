import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_nothing_found.dart';
import 'package:ozcart/components/oz_product.dart';
import 'package:ozcart/components/oz_search_field.dart';
import 'package:ozcart/theme/palette.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
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
            SizedBox(height: 57),
            OzProduct(),
            OzNothingFound(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
