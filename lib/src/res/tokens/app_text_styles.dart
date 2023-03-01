import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Font Family Configs
String get montserrat => "Montserrat";

FontWeight get regular => FontWeight.w400;
FontWeight get medium => FontWeight.w500;
FontWeight get semiBold => FontWeight.w600;

/// Text Theme Configs
TextTheme get textTheme => TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        height: 1.5,
        color: AppColors.secondary,
        fontWeight: semiBold,
      ),
      displayMedium: TextStyle(
        color: AppColors.secondary,
        fontSize: 20,
        height: 1.5,
        fontWeight: semiBold,
      ),
      displaySmall: TextStyle(
        color: AppColors.secondary,
        fontSize: 18,
        height: 1.5,
        fontWeight: semiBold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.secondary,
        fontSize: 16,
        height: 1.5,
        fontWeight: semiBold,
      ),
      headlineSmall: TextStyle(
        color: AppColors.secondary,
        fontSize: 15,
        height: 1.5,
        fontWeight: semiBold,
      ),
      titleLarge: TextStyle(
        color: AppColors.secondary,
        fontSize: 14,
        height: 1.5,
        fontWeight: semiBold,
      ),
      titleMedium: TextStyle(
        color: AppColors.secondary,
        fontSize: 12,
        height: 1.5,
        fontWeight: medium,
      ),
      bodyLarge: TextStyle(
        color: AppColors.secondary,
        fontSize: 14,
        height: 1.5,
        fontWeight: semiBold,
      ),
    );
