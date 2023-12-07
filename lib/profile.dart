import 'package:flutter/material.dart';
import 'app_theme/app_theme.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Container(
          width: 110,
          height: 110,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/profile_photo.png'),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7A1D1D25),
                blurRadius: 24,
                offset: Offset(0, 16),
                spreadRadius: -16,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 36),
          child: Text(
            AppTheme.profileName,
            style: AppTheme.largeTextStyle,
          ),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
