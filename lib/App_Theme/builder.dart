import 'package:flutter/material.dart';
import 'app_theme.dart';

class CustomBuilder {
  static Widget buildTitle(String text) {
    return SizedBox(
      width: 343,
      child: Text(
        text,
        style: AppTheme.titleTextStyle,
      ),
    );
  }

  static Widget buildSubtitle(String text) {
    return SizedBox(
      width: 343,
      child: Text(
        text,
        style: AppTheme.subtitleTextStyle,
      ),
    );
  }
}
