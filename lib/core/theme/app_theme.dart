import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portifolio/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTheme {
  static const String fontFamily = 'Poppins';
  static const double fontSize = 16.0;

  static final lightTheme = ThemeData(
    primaryColor: AppColors.darkBlue,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkBlue,
      primaryContainer: AppColors.darkBlue,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize: 16.sp,
        color: AppColors.darkBlue,
      ),
      bodySmall: GoogleFonts.aBeeZee(
        fontSize: 16.sp,
        color: AppColors.white,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkBlue,
      primaryContainer: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.darkBlue,
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize: 16.sp,
        color: AppColors.white,
      ),
      bodySmall: GoogleFonts.aBeeZee(
        fontSize: 16.sp,
        color: AppColors.darkBlue,
      ),
    ),
  );
}
