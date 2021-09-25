import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzOrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightGrey,
        border: Border(
          left: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 20,
          ),
        ),
      ),
      height: 144,
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ORDER: #SLANADASAGERGE',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 9),
            Text(
              'Order Date: 1st June 2021',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 9),
            Text(
              'Total: KSH. 25000',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 9),
            Chip(
              label: Text('In Progress'),
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
              // TODO: if delivered:- backgroundColor: Theme.of(context).accentColor.withOpacity(0.4),
            )
          ],
        ),
      ),
    );
  }
}
