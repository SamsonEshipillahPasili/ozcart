import 'package:flutter/material.dart';
import 'package:ozcart/theme/palette.dart';

// --------- Typography ----------------- //

final _headline1 = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 36,
);

final _headline6 = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

final _headline5 = TextStyle(
  color: black,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

final _bodyText1 = TextStyle(
  color: black,
  fontWeight: FontWeight.normal,
  fontSize: 14,
);

final _textTheme = TextTheme(
  headline1: _headline1,
  headline6: _headline6,
  headline5: _headline5,
  bodyText1: _bodyText1,
);

// --------- Theme ----------------- //
final theme = ThemeData(
  accentColor: accentColor,
  primaryColor: primaryColor,
  textTheme: _textTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
