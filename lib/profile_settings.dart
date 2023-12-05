import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';
import 'App_Theme/builder.dart';
import 'package:flutter_development_1/cards.dart';
import 'package:flutter_development_1/tarifs.dart';

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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 375, height: 14),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: CustomBuilder.buildTitle('У вас подключено'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: CustomBuilder.buildSubtitle(
                          'Подписки, автоплатежи и сервисы на которые \nвы подписались'),
                    ),
                    Cards(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: CustomBuilder.buildTitle('Тарифы и лимиты'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: CustomBuilder.buildSubtitle(
                          'Для операций в Сбербанк Онлайн'),
                    ),
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
