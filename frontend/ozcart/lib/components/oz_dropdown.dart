import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzDropDown extends StatelessWidget {
  final String label;

  const OzDropDown({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextDropdownFormField(
      options: ['Option 1', 'Option 2', 'Option 3'],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        suffixIcon: Icon(Icons.arrow_drop_down),
        labelText: label,
        labelStyle: TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: accentColor),
        ),
        filled: true,
        fillColor: Color(0xFFF2F1F8),
        hintStyle: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
