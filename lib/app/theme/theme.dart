import 'package:flutter/material.dart';

class FPTheme {
  ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme.light(),
      );

  ThemeData get darkTheme => ThemeData(
        colorScheme: const ColorScheme.dark(),
      );
}
