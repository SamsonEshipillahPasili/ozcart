import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzInputField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;

  const OzInputField({
    Key? key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

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
        filled: true,
        fillColor: Color(0xFFF2F1F8),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText1,
      ),
      keyboardType: keyboardType,
    );
  }
}
