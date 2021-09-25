import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_category.dart';

class CategoriesScreen extends StatelessWidget {
  final _categories = [
    'House Appliances',
    'Laptops',
    'iPhones',
    'Other Phones',
    'MacBooks',
    'Laptops',
    'Kitchen Stuff',
    'Routers',
    'Sub-Woofers'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => OzCategory(
          label: _categories[index],
        ),
        itemCount: _categories.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset("assets/items_search.png"),
      ),
    );
  }
}
