import 'package:flutter/material.dart';
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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 375, height: 14),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, bottom: 20, left: 16, right: 16),
                child: (Container(
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
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            letterSpacing: -0.70,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 343,
                        child: Text(
                          'Подписки, автоплатежи и сервисы на которые \nвы подписались',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                            letterSpacing: -0.42,
                          ),
                        ),
                      ),
                      Cards(),
                    ],
                  ),
                )),
              ))
        ],
      ),
    );
  }
}
