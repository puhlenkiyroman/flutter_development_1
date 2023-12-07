import 'package:flutter/material.dart';

class AppTheme {
  // Цвета
  static const Color primaryColor = Color(0xFF08A652);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Color(0x8D000000);
  static const Color dividerThinColor = Color(0x1F000000);
  static const Color chipColor = Color(0x14000000);
  static const Color shadowColor1 = Color(0x114F4F6C);
  static const Color shadowColor2 = Color(0x14000000);

  // Размеры текста
  static const double fontSizeSmall = 14;
  static const double fontSizeMedium = 16;
  static const double fontSizeLarge = 20;
  static const double fontSizeProfile = 24;

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
    fontSize: fontSizeProfile,
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
    height: 0.09,
    letterSpacing: -0.42,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeLarge,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 0.06,
    letterSpacing: -0.70,
  );

  static const TextStyle titleTarifTextStyle = TextStyle(
    color: blackColor,
    fontSize: fontSizeMedium,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  static const TextStyle subtitleTarifTextStyle = TextStyle(
    color: greyColor,
    fontSize: fontSizeMedium,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 1.29,
  );

  // Тексты

  // profile.dart
  static const String profileName = 'Екатерина';

  // categories_chips.dart
  static const List<String> categories = [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука',
  ];

  // cards.dart
  static const String sberPrimeCardTitle = 'СберПрайм';
  static const String sberPrimeCardPayment = 'Платёж 9 июля';
  static const String sberPrimeCardAmount = '199 ₽ в месяц';

  static const String percentCardTitle = 'Переводы';
  static const String percentCardPayment = 'Автопродление 21 августа';
  static const String percentCardAmount = '199 ₽ в месяц';

  //custom_app_bar.dart

  static const String profile = 'Профиль';
  static const String settings = 'Профиль';
  static const String inSettings = 'Содержимое для Настроек';

  //profile_settings.dart
  static const String title1 = 'У вас подключено';
}
