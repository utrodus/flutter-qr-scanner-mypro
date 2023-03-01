import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'tokens/app_colors.dart';
import 'tokens/app_text_styles.dart';

ThemeData get appTheme => ThemeData(
      fontFamily: montserrat,
      scaffoldBackgroundColor: AppColors.background,
      indicatorColor: AppColors.secondary,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        onPrimary: AppColors.onPrimary,
        background: AppColors.background,
        onSurface: AppColors.onSurface,
        error: AppColors.errorColor,
        tertiary: AppColors.grey,
      ),
      textTheme: textTheme,
      appBarTheme: appBarThemeData,
      elevatedButtonTheme: elevatedButtonThemeData,
      bottomNavigationBarTheme: bottomNavigatonBarThemeData,
    );

AppBarTheme get appBarThemeData => AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      statusBarColor: AppColors.primary,
    ),
    centerTitle: true,
    backgroundColor: AppColors.background,
    elevation: 1,
    titleTextStyle: TextStyle(
      color: AppColors.secondary,
      fontSize: 16,
      fontWeight: semiBold,
    ));

ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    );

BottomNavigationBarThemeData get bottomNavigatonBarThemeData =>
    BottomNavigationBarThemeData(
      elevation: 5,
      backgroundColor: AppColors.background,
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.primary,
      selectedLabelStyle: TextStyle(
        fontWeight: semiBold,
        fontSize: 13,
      ),
    );
