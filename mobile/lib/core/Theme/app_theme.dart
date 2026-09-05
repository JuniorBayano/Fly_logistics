import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        secondary: Color(0xFF000000),
        onSecondary: Color(0xFF64748B),
          surface: Color(0xFF64748B),
          surfaceContainer: Color(0xFFFFFFFF),
          surfaceBright:Color(0xFFDDDDDD),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        secondary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFF64748B),
        surface: Color(0xFF64748B),
        surfaceContainer: Color(0xFF162A2E),
        surfaceBright: Color(0xFF162A2E),
      ),
    );
  }
}