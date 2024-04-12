import 'package:flutter/material.dart';
import 'package:nsbm_store/utils/constants/colors.dart';
import 'package:nsbm_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/outline_botton_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:nsbm_store/utils/theme/custom_themes/text_theme.dart';

class NAppTheme {
  // Making the constructor private
  NAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: NColors.primary,
      textTheme: NTextTheme.lightTextTheme,
      chipTheme: NChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: NAppBarTheme.lightAppBarTheme,
      checkboxTheme: NCheckBoxTheme.lightCheckboxtheme,
      bottomSheetTheme: NBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: NElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: NOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: NTextFormFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: NTextTheme.darkTextTheme,
      chipTheme: NChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: NAppBarTheme.darkAppBarTheme,
      checkboxTheme: NCheckBoxTheme.darkCheckboxtheme,
      bottomSheetTheme: NBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: NElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: NOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: NTextFormFieldTheme.darkInputDecorationTheme);
}
