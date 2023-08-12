import 'package:flutter/material.dart';

const primary = Color(0xFF843667);
const secondary = Color(0xFF022238);
const secondarySecondary = Color(0xFFFFDCBC);
const background = Color(0xFFE8F6FB);
const white = Colors.white;
const black = Colors.black;

class AppTheme {
  static const title = TextStyle(
    color: white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const text = TextStyle(color: primary);

  static final bodyText = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12,
  );

  static const cardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
