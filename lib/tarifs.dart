import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';

class Tarifs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildListItem(
          'assets/images/speedometer.png',
          'Изменить суточный лимит',
          'На платежи и переводы',
        ),
        _buildDivider(),
        _buildListItem(
          'assets/images/tarif_percent.png',
          'Переводы без комиссии',
          'Показать остаток в этом месяце',
        ),
        _buildDivider(),
        _buildListItem(
          'assets/images/arrows_forward_back.png',
          'Информация о тарифах \nи лимитах',
          '',
        ),
      ],
    );
  }

  Widget _buildListItem(String imageUrl, String text1, String text2) {
    return Container(
      width: 375.0,
      height: 64.0,
      child: InkWell(
        child: Container(
          width: 327.0,
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Image.asset(
                      imageUrl,
                      width: 36.0,
                      height: 36.0,
                      fit: BoxFit.none,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(text1, style: AppTheme.titleTarifTextStyle),
                      ),
                      if (text2.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(text2,
                              style: AppTheme.subtitleTarifTextStyle),
                        ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 48.0,
                height: 40.0,
                margin: EdgeInsets.only(left: 8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.only(left: 50.0), // Отступ слева
      child: SizedBox(
        width: double.infinity,
        child: Divider(
          height: 1,
          color: AppTheme.dividerThinColor,
        ),
      ),
    );
  }
}
