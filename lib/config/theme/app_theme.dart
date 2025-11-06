import 'package:flutter/material.dart';
import 'package:task_09/core/constants/my_color.dart';
import 'package:task_09/core/constants/my_string.dart';

abstract class AppTheme {
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        visualDensity: visualDensity,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: MyColor.textColor,
            fontFamily: MyString.poppinsMedium,
            fontSize: 28,
          ),
          titleMedium: TextStyle(
            color: MyColor.textColor,
            fontSize: 16,
            fontFamily: MyString.poppinsMedium,
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            color: MyColor.textColor,
            fontFamily: MyString.poppinsRegular,
          ),
          bodyLarge: TextStyle(
            fontSize: 14,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
          bodyMedium: TextStyle(
            fontSize: 11,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            color: MyColor.textColor,
            fontFamily: MyString.rubikRegular,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        cardColor: MyColor.cardLight,
        iconTheme: const IconThemeData(color: MyColor.iconDark),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: MyColor.textThird, size: 20),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: MyColor.textColor,
            fontSize: 13.5,
            fontFamily: MyString.poppinsMedium,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MyColor.primary,
          accentColor: MyColor.primaryAccent,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 12, color: MyColor.textThird),
          hintStyle: TextStyle(
              fontSize: 12, color: MyColor.textThird, letterSpacing: 1.2),
          isDense: true,
          filled: true,
          prefixIconColor: MyColor.textThird,
          fillColor: MyColor.cardBackgroundColor,
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: MyColor.inActiveColor, width: 0.3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: MyColor.inActiveColor, width: 0.3),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(vertical: 10),
            ),
            backgroundColor: WidgetStateProperty.all(MyColor.bluePrimary),
            foregroundColor: WidgetStateProperty.all(Colors.white),
          ),
        ),
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData().copyWith(
        visualDensity: visualDensity,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: MyColor.textLigth,
            fontSize: 17,
          ),
          titleMedium: TextStyle(
            color: MyColor.textLigth,
            fontSize: 11,
            letterSpacing: 0.3,
          ),
          bodyLarge: TextStyle(
            fontSize: 11,
            color: MyColor.textFaded,
          ),
          bodyMedium: TextStyle(
            fontSize: 11,
            color: MyColor.textFaded,
          ),
          bodySmall: TextStyle(
            fontSize: 11,
            color: MyColor.textFaded,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF1B1E1F),
        cardColor: MyColor.cardDark,
        iconTheme: const IconThemeData(color: MyColor.iconLight),
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(secondary: MyColor.accent)
            .copyWith(surface: const Color(0xFF1B1E1F)),
      );
}
