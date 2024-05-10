import 'package:flutter/material.dart';
import 'package:max_open_task/src/values/app_colors.dart';
import 'package:max_open_task/src/values/app_constants.dart';
import 'package:max_open_task/src/values/app_theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(HomeScreenConstants.borderRadius),
          image: const DecorationImage(
            image: AssetImage(HomeScreenConstants.imageAssetPath),
            scale: HomeScreenConstants.imageScale,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(HomeScreenConstants.innerPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Привіт, \n',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: username,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: HomeScreenConstants.spacing),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Додавання авто',
                    style: Theme.of(context).textTheme.homeScreenSubtitle,
                  ),
                  const SizedBox(height: HomeScreenConstants.innerSpacing),
                  FractionallySizedBox(
                    widthFactor: HomeScreenConstants.fractionWidth,
                    child: Text(
                      'Завантажте дані про ваше авто для кращого використання сервісу.',
                      style: Theme.of(context).textTheme.homeScreenCardText,
                    ),
                  ),
                  const SizedBox(height: HomeScreenConstants.innerSpacing),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero,
                          ),
                          child: Text(
                            'Додати авто',
                            style: Theme.of(context)
                                .textTheme
                                .homeScreenCardTextGreen,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: HomeScreenConstants.iconSize,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
