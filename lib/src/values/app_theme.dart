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
);

const textTheme = TextTheme(
  bodyLarge: TextStyle(
    fontSize: 19,
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
}
