import 'package:flutter/material.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/bottom_nav_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/card_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/geolocation_widget.dart';
import 'package:max_open_task/src/pages/home_screen/widgets/logo_with_phone_widget.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_constants.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)?.settings.arguments as String;
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom:
                            Radius.circular(HomeScreenConstants.borderRadius),
                      ),
                      color: AppColors.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: HomeScreenConstants.sidePadding,
                        right: HomeScreenConstants.sidePadding,
                        bottom: HomeScreenConstants.bottomPadding,
                      ),
                      child: Column(
                        children: [
                          const LogoWithPhoneWidget(),
                          CardWidget(username: username),
                        ],
                      ),
                    ),
                  ),
                  const GeolocationWidget(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: HomeScreenConstants.sidePadding,
                      right: HomeScreenConstants.sidePadding,
                    ),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        child: const Text('Викликати майстра')),
                  )
                ],
              ),
            ),
            bottomNavigationBar: const BottomNavWidget()),
      ),
    );
  }
}
