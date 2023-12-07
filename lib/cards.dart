import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard('assets/images/sberprime.png', AppTheme.sberPrimeCardTitle,
              AppTheme.sberPrimeCardPayment, AppTheme.sberPrimeCardAmount,
              isFirstCard: true),
          _buildCard('assets/images/percent.png', AppTheme.percentCardTitle,
              AppTheme.percentCardPayment, AppTheme.percentCardAmount),
        ],
      ),
    );
  }

  Widget _buildCard(
      String imagePath, String title, String payment, String amount,
      {bool isFirstCard = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isFirstCard ? 0 : 8),
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
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                        style: AppTheme.tabBarTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    payment,
                    style: AppTheme.cardTextStyle,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Text(
                    amount,
                    style: AppTheme.smallTextStyle,
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
