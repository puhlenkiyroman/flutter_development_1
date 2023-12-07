import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';
import 'App_Theme/builder.dart';
import 'package:flutter_development_1/cards.dart';
import 'package:flutter_development_1/tarifs.dart';
import 'package:flutter_development_1/categories_chips.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: CustomBuilder.buildTitle('Интересы '),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CustomBuilder.buildSubtitle(
                      'Мы подбираем истории и предложения по темам,'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: CustomBuilder.buildSubtitle('которые вам нравятся'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                CategoriesChips(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
