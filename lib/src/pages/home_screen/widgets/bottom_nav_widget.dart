import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:max_open_task/src/values/app_constants.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: HomeScreenConstants.navSidePadding,
        ),
        child: BottomNavigationBar(
          currentIndex: 1,
          unselectedFontSize: 9,
          selectedFontSize: 9,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                    bottom: HomeScreenConstants.bottomNavPadding),
                child: SvgPicture.asset('assets/icons/request.svg'),
              ),
              label: 'Заявки',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                    bottom: HomeScreenConstants.bottomNavPadding),
                child: SvgPicture.asset('assets/icons/home_icon.svg'),
              ),
              label: 'Головна',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                    bottom: HomeScreenConstants.bottomNavPadding),
                child: SvgPicture.asset('assets/icons/person.svg'),
              ),
              label: 'Особисті дані',
            ),
          ],
        ),
      );
}
