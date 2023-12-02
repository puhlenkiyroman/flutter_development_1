import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard('assets/images/sberprime.png', 'СберПрайм',
              'Платёж 9 июля', '199р в месяц',
              isFirstCard: true),
          _buildCard('assets/images/percent.png', 'Переводы',
              'Автопродление 21 августа', '199р в месяц'),
        ],
      ),
    );
  }

  Widget _buildCard(
      String imagePath, String title, String payment, String amount,
      {bool isFirstCard = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isFirstCard ? 0 : 16),
      child: SizedBox(
        width: 216,
        child: Padding(
          padding: const EdgeInsets.only(top: 22, bottom: 22),
          child: DecoratedBox(
            decoration: ShapeDecoration(
              color: AppTheme.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: AppTheme.shadowColor1,
                  blurRadius: 14,
                  offset: Offset(0, 8),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: AppTheme.shadowColor2,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePath,
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        title,
                        style: AppTheme.tabBarTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                          letterSpacing: -0.40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    payment,
                    style: AppTheme.tabBarTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Text(
                    amount,
                    style: AppTheme.cardTextStyle.copyWith(
                      color: AppTheme.blackColor.withOpacity(0.55),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
