import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  ColorConstants._init();

  Color dodgerBlue = const Color(0xFF38B6FF);
  Color sanJuan = const Color(0xFF375974);
}
