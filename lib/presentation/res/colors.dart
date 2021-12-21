import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimarySwatch extends MaterialColor {
  PrimarySwatch({Color color = AppColors.purple})
      : super(0xFF0E3F99, {
          50: color.withOpacity(.1),
          100: color.withOpacity(.2),
          200: color.withOpacity(.3),
          300: color.withOpacity(.4),
          400: color.withOpacity(.5),
          500: color.withOpacity(.6),
          600: color.withOpacity(.7),
          700: color.withOpacity(.8),
          800: color.withOpacity(.9),
          900: color.withOpacity(1),
        });
}

class AppColors {
  static const Color appColor = Color.fromRGBO(14, 63, 153, 1);
  static const Color darkText = Color.fromRGBO(51, 58, 77, 1);
  static const Color purple = Color.fromRGBO(14, 63, 153, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color whiteTransparent = Color.fromRGBO(255, 255, 255, 0.1);
  static const Color whiteTransparent2 = Color.fromRGBO(255, 255, 255, 0.12);
  static const Color dark = Color.fromRGBO(38, 25, 88, 1);
  static const Color greyLight = Color.fromRGBO(205, 205, 205, 1);
}
