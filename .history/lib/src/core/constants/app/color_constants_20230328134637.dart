import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  ColorConstants._init();

  Color mainColor = const Color(0xFFE72323);
  Color white = const Color(0xFFFFFFFF);
  Color alto = const Color(0xffDFDFDF);
  Color red = const Color(0xFF931010);
  Color black = const Color(0xFF2E2B2B);
  Color darkText = const Color(0xFFB5B5B5);
  Color grayBlack = const Color(0xFF525252);
  Color green = const Color(0xFF39BC5E);
  Color grey = const Color(0xFFEEEEEE);
  Color borderColor = const Color(0xFFFBDADA);
  Color background = const Color(0xFFF5F3FB);
  Color chablis = const Color(0xFFFFF2F2);
  Color yellow = const Color(0xFFFFC738);
  Color textColor = const Color(0xFFD01818);
  Color redBackground = const Color(0xFFFFF2F2);
  Color weitherBlue = const Color(0xFF59A2F6);
  Color darkBackground = const Color(0xFF1E1E1E);
}
