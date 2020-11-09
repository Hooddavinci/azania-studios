import 'package:azaniaweb29/CustomIcons.dart';
import 'package:azaniaweb29/singUp.dart';
import 'package:flutter/material.dart';
import 'CustomIcons.dart';

final DarkGray = const Color(0xFF231F20);
final LightGray = const Color(0xFFF7F7F7);
final DarkGreen = const Color(0xFF7CA43C);
final LightGreen = const Color(0xFFD7EAB8);
final shade = const Color(0xFFDADADA);
final darkgrayword = const Color(0xFF808080);

void main() {
  runApp(
    MaterialApp(
      home: singUp_view(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
