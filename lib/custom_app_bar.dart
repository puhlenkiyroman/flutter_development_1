import 'package:flutter/material.dart';
import 'package:flutter_development_1/profile.dart';
import 'package:flutter_development_1/profile_settings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // количество вкладок
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
                      color: Color(0xFF08A652),
                    ),
                  ),
                  Profile(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Color(0xFF08A652),
                    ),
                  ),
                ],
              ),
              const TabBar(
                indicatorColor: const Color(0xFF08A652),
                tabs: [
                  Tab(
                    child: SizedBox(
                      width: double.infinity,
                      height: 20,
                      child: Text(
                        'Профиль',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                          letterSpacing: -0.40,
                        ),
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
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                          letterSpacing: -0.40,
                        ),
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
