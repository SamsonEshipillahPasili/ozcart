import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: accentColor),
        ),
        prefixIcon: Icon(
          Icons.search_sharp,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
