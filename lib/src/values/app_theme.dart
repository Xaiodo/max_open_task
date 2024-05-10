import 'package:flutter/material.dart';
import 'package:max_open_task/src/values/app_colors.dart';

final theme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    background: AppColors.background,
    onSecondary: AppColors.onSecondary,
  ),
  fontFamily: 'e-Ukraine',
  textTheme: textTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
);

const textTheme = TextTheme(
  bodyLarge: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    foregroundColor: AppColors.white,
    backgroundColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);

const bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: AppColors.background,
  selectedItemColor: AppColors.white,
  unselectedItemColor: AppColors.unselectedItemColor,
);

extension AppTextTheme on TextTheme {
  TextStyle get inputTextHint => TextStyle(
        color: AppColors.white.withOpacity(0.6),
        fontWeight: FontWeight.w300,
      );
  TextStyle get inputText => const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );
  TextStyle get homeScreenTitle => const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      );
  TextStyle get homeScreenSubtitle => TextStyle(
        color: AppColors.white.withOpacity(0.6),
        fontWeight: FontWeight.w300,
        fontSize: 8,
      );
  TextStyle get homeScreenCardText => const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );
  TextStyle get homeScreenCardTextGreen => homeScreenCardText.copyWith(
        color: AppColors.primary,
      );
}
