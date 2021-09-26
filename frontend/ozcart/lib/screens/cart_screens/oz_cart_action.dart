import 'package:flutter/material.dart';
import 'package:ozcart/components/oz_primary_button.dart';
import 'package:ozcart/theme/palette.dart';

class OzCartAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey,
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 31,
        top: 14,
        right: 31,
        bottom: 33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            child: Text(
              'TOTAL: KSH.0',
              style: Theme.of(context).textTheme.headline5,
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 17),
          OzPrimaryButton(text: 'Order Now', onTap: () {}),
        ],
      ),
    );
  }
}
