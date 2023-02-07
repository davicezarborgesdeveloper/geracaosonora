import 'package:flutter/material.dart';
import 'package:geracao_sonora/app/core/ui/styles/colors_app.dart';
import 'package:geracao_sonora/app/core/ui/styles/text_styles.dart';

import '../styles/app_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.grey[100]!),
  );

  static final theme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(elevation: 0),
      primaryColor: ColorsApp.i.primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsApp.i.primary,
        primary: ColorsApp.i.primary,
        secondary: ColorsApp.i.secondary,
      ),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: AppStyles.i.primaryButton),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey[100]!,
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        border: _defaultInputBorder,
        enabledBorder: _defaultInputBorder,
        focusedBorder: _defaultInputBorder,
        labelStyle: TextStyles.i.textRegular.copyWith(color: Colors.grey[900]!),
        errorStyle: TextStyles.i.textRegular.copyWith(color: Colors.red),
      ));
}
