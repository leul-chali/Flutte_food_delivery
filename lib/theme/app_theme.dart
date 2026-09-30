import 'package:flutter/material.dart';

class AppColors {
  // Brand Primary
  static const Color primary = Color(0xFFFF7A00);
  static const Color primaryDark = Color(0xFFE56700);
  static const Color primaryLight = Color(0xFFFFF3E6);

  // Neutral / Background
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Colors.white;
  static const Color surfaceMuted = Color(0xFFF6F7F9);
  static const Color border = Color(0xFFEAEBED);

  // Typography
  static const Color textPrimary = Color(0xFF1B1B1E);
  static const Color textSecondary = Color(0xFF7D7F88);
  static const Color textMuted = Color(0xFFA5A7B0);

  // Accents & Badges
  static const Color star = Color(0xFFFFB800);
  static const Color success = Color(0xFF27AE60);
  static const Color badgeBg = Color(0xFFFFF7ED);
  static const Color badgeText = Color(0xFFD97706);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
