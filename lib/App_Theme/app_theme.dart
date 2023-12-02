import 'package:flutter/material.dart';

class AppTheme {
  // Цвета
  static const Color primaryColor = Color(0xFF08A652);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color shadowColor1 = Color(0x114F4F6C);
  static const Color shadowColor2 = Color(0x14000000);

  // Размеры текста
  static const double fontSizeSmall = 14;
  static const double fontSizeMedium = 16;
  static const double fontSizeLarge = 20;

  // Семейство шрифтов
  static const String fontFamily = 'SF Pro Text';
  static const String fontFamilyDisplay = 'SF Pro Display';

  // Стили текста
  static const TextStyle tabBarTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeMedium,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 0.08,
    letterSpacing: -0.40,
  );

  static const TextStyle cardTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeSmall,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 0.09,
    letterSpacing: -0.41,
  );

  static const TextStyle largeTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeLarge,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.70,
  );

  static const TextStyle smallTextStyle = TextStyle(
    color: greyColor,
    fontSize: fontSizeSmall,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 1.3,
    letterSpacing: -0.42,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeLarge,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.70,
  );

  static const TextStyle subtitleTextStyle = TextStyle(
    color: greyColor,
    fontSize: fontSizeSmall,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 1.3,
    letterSpacing: -0.42,
  );
}
