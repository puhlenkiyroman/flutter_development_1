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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomBuilder.buildTitle('У вас подключено'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: CustomBuilder.buildSubtitle(
                      'Подписки, автоплатежи и сервисы на которые'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomBuilder.buildSubtitle('вы подписались'),
                ),
                Cards(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: CustomBuilder.buildTitle('Тарифы и лимиты'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: CustomBuilder.buildSubtitle(
                      'Для операций в Сбербанк Онлайн'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                Tarifs(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
