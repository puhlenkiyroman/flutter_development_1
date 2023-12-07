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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: AppTheme.whiteColor,
                floating: true,
                expandedHeight: 280,
                flexibleSpace: PreferredSize(
                  preferredSize: const Size.fromHeight(52),
                  child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Column(
                      children: [
                        const SizedBox(height: 52),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close_rounded,
                                size: 24,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                            const Profile(),
                            IconButton(
                              onPressed: () {},
                              icon: const ImageIcon(
                                AssetImage(
                                    'assets/images/arrow_right_square.png'),
                                color: AppTheme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  indicatorColor: AppTheme.primaryColor,
                  labelStyle:
                      AppTheme.tabBarTextStyle.copyWith(color: Colors.black),
                  unselectedLabelStyle:
                      AppTheme.tabBarTextStyle.copyWith(color: Colors.grey),
                  tabs: const [
                    Tab(
                      text: 'Профиль',
                    ),
                    Tab(
                      text: 'Настройки',
                    ),
                  ],
                ),
                pinned: true,
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ProfileSettings(),
              Center(child: Text('Содержимое для Настроек')),
            ],
          ),
        ),
      ),
    );
  }
}
