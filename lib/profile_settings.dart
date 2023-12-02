import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';
import 'package:flutter_development_1/cards.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 150,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 375, height: 14),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 20,
                left: 16,
                right: 16,
              ),
              child: Container(
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    SizedBox(
                      width: 343,
                      child: Text(
                        'У вас подключено',
                        style: AppTheme.titleTextStyle,
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      width: 343,
                      child: Text(
                        'Подписки, автоплатежи и сервисы на которые \nвы подписались',
                        style: AppTheme.subtitleTextStyle,
                      ),
                    ),
                    Cards(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
