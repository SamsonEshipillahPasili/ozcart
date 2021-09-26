import 'package:flutter/material.dart';

class OzAccountInfo extends StatelessWidget {
  final String heading;
  final String subHeading;

  const OzAccountInfo({
    Key? key,
    required this.heading,
    required this.subHeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        heading,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .merge(TextStyle(color: Color(0xFF6D6D6D))),
      ),
      subtitle: Text(
        subHeading,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
