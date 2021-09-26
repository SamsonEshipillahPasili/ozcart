import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

class OzNothingFound extends StatelessWidget {
  final String title;

  const OzNothingFound({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 117,
          width: 211,
          child: Center(
            child: Image.asset('assets/no_product.png'),
          ),
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        SizedBox(height: 22),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
