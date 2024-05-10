import 'package:flutter/material.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_constants.dart';

class GeolocationWidget extends StatelessWidget {
  const GeolocationWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(
          vertical: HomeScreenConstants.marginVertical,
          horizontal: HomeScreenConstants.marginHorizontal,
        ),
        width: MediaQuery.of(context).size.width *
            HomeScreenConstants.widthPercentage,
        height: MediaQuery.of(context).size.height *
            HomeScreenConstants.heightPercentage,
        decoration: BoxDecoration(
          color: AppColors.onSecondary,
          borderRadius: BorderRadius.circular(HomeScreenConstants.borderRadius),
        ),
      );
}
