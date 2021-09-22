import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzPasswordField extends StatefulWidget {
  @override
  _OzPasswordFieldState createState() => _OzPasswordFieldState();
}

class _OzPasswordFieldState extends State<OzPasswordField> {
  var visibilityOff = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15, right: 15),
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
        hintText: 'Enter your password',
        hintStyle: Theme.of(context).textTheme.bodyText1,
        suffix: GestureDetector(
          onTap: () {
            setState(() {
              visibilityOff = !visibilityOff;
            });
          },
          child: Icon(
            visibilityOff ? Icons.visibility_off : Icons.visibility,
            size: 18,
          ),
        ),
      ),
      obscureText: visibilityOff,
    );
  }
}
