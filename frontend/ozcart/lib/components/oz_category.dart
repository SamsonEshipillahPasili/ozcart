import 'package:flutter/material.dart';

class OzCategory extends StatefulWidget {
  final String label;

  const OzCategory({Key? key, required this.label}) : super(key: key);

  @override
  _OzCategoryState createState() => _OzCategoryState(label);
}

class _OzCategoryState extends State<OzCategory> {
  var _selectedState = false;
  final String label;

  _OzCategoryState(this.label);

  @override
  Widget build(Object context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (value) {
          setState(() {
            _selectedState = value == null ? false : value;
          });
        },
        value: _selectedState,
      ),
      title: GestureDetector(
        child: Text(label),
        onTap: () {
          setState(() {
            _selectedState = !_selectedState;
          });
        },
      ),
    );
  }
}
