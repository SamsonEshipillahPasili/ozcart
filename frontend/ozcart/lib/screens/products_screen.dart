import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_nothing_found.dart';
import 'package:ozcart/components/oz_product.dart';
import 'package:ozcart/components/oz_search_field.dart';
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
            SizedBox(height: 37),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                children: List.generate(10, (index) => OzProduct()),
              ),
            ),
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
