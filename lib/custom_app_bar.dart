import 'package:flutter/material.dart';
import 'package:flutter_development_1/profile.dart';
import 'package:flutter_development_1/profile_settings.dart';
import 'app_theme/app_theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close_rounded,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const Profile(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                ],
              ),
              const TabBar(
                indicatorColor: AppTheme.primaryColor,
                tabs: [
                  Tab(
                    child: SizedBox(
                      width: double.infinity,
                      height: 20,
                      child: Text(
                        'Профиль',
                        textAlign: TextAlign.center,
                        style: AppTheme.tabBarTextStyle,
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: double.infinity,
                      height: 20,
                      child: Text(
                        'Настройки',
                        textAlign: TextAlign.center,
                        style: AppTheme.tabBarTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ProfileSettings(),
                    Center(
                      child: Text('Содержимое для Настроек'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
