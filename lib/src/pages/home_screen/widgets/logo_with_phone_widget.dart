import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:max_open_task/src/values/app_constants.dart';
import 'package:max_open_task/src/values/app_theme.dart';

class LogoWithPhoneWidget extends StatelessWidget {
  const LogoWithPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            HomeScreenConstants.logoText,
            style: Theme.of(context).textTheme.homeScreenTitle,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    HomeScreenConstants.phoneIconPath,
                  ),
                )
              ],
            ),
          ),
        ],
      );
}
