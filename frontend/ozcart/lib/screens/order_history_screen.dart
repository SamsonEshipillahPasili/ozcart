import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_order_history.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: Padding(
        child: ListView.separated(
          itemBuilder: (context, index) => OzOrderHistory(),
          itemCount: 5,
          separatorBuilder: (context, int) => SizedBox(
            height: 29,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      ),
    );
  }
}
