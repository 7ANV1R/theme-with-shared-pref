import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  const AppTheme._();

  // Light Theme

  static Color lightPrimaryColor = const Color(0xff1652F0);
  static Color lightSecondaryColor = const Color(0xff888E9D);
  static MaterialStateProperty<Color?>? lightBackgroundColor =
      MaterialStateProperty.all(const Color(0xff1652F0));
  static Color lightScaffoldBackgroundColor = const Color(0xffF4F7FA);
  static Color lightBlackPrimary = const Color(0xff151719);
  static Color lightGrayBorderSideColor = const Color(0xffDFDFDF);
  static ColorScheme lightColorScheme = const ColorScheme.light().copyWith(
    primary: const Color(0xff1652F0),
    secondary: const Color(0xff56B4FC),
  );

  // Dark Theme

  static Color darkPrimaryColor = const Color(0xff1652f0);
  static Color darkSecondaryColor = const Color(0xffF4F7FA);
  static MaterialStateProperty<Color?>? darkbackgroundColor =
      MaterialStateProperty.all(const Color(0xff1652f0));
  static Color darkScaffoldBackgroundColor = const Color(0xff212121);
  static Color darkBlackPrimary = const Color(0xffF4F7FA);
  static Color darkGrayBorderSideColor = const Color(0xffDFDFDF);
  static ColorScheme darkColorScheme = const ColorScheme.dark().copyWith(
    primary: const Color(0xff1652F0),
    secondary: const Color(0xff56B4FC),
  );

  static final lightTheme = ThemeData(
    fontFamily: 'SofiaPro',
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: lightScaffoldBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: lightColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      color: lightScaffoldBackgroundColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: lightBlackPrimary,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: lightBlackPrimary,
        height: 36 / 28,
      ),
      headline2: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: lightBlackPrimary,
        letterSpacing: -0.6,
        height: 28 / 22,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: lightSecondaryColor,
        height: 24 / 16,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: lightSecondaryColor,
        height: 22 / 14,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      hintStyle: TextStyle(
        fontSize: 14,
        color: lightSecondaryColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: lightGrayBorderSideColor,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: lightGrayBorderSideColor,
          width: 1.5,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 22 / 14,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(lightPrimaryColor),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 24 / 16,
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
        foregroundColor: MaterialStateProperty.all(lightPrimaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: lightPrimaryColor, width: 1.5),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 24 / 16,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(lightPrimaryColor),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        lightPrimaryColor,
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: lightScaffoldBackgroundColor),
        borderRadius: BorderRadius.circular(6),
      ),
      backgroundColor: Colors.white,
      // labelStyle: bodyText2.copyWith(color: lightBlackPrimary),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      labelPadding: const EdgeInsets.symmetric(horizontal: 2),
    ),
  );

  // static Brightness get currentSystemTheme => SchedulerBinding.instance!.window.platformBrightness;

  static final darkTheme = ThemeData(
    fontFamily: 'SofiaPro',
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkScaffoldBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: darkColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      color: darkScaffoldBackgroundColor,
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: darkBlackPrimary,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: darkBlackPrimary,
        height: 36 / 28,
      ),
      headline2: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: darkBlackPrimary,
        letterSpacing: -0.6,
        height: 28 / 22,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: darkSecondaryColor,
        height: 24 / 16,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: darkSecondaryColor,
        height: 22 / 14,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(24),
      hintStyle: TextStyle(
        fontSize: 14,
        color: darkSecondaryColor,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: darkGrayBorderSideColor,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: darkGrayBorderSideColor,
          width: 1.5,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 22 / 14,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(darkPrimaryColor),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 24 / 16,
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(16),
        ),
        foregroundColor: MaterialStateProperty.all(darkPrimaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: darkPrimaryColor, width: 1.5),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(darkBlackPrimary),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 24 / 16,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(darkPrimaryColor),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        darkPrimaryColor,
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: darkScaffoldBackgroundColor),
        borderRadius: BorderRadius.circular(6),
      ),
      backgroundColor: Colors.grey,
      // labelStyle: bodyText2.copyWith(color: darkBlackPrimary),
      labelStyle: TextStyle(color: darkScaffoldBackgroundColor),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      labelPadding: const EdgeInsets.symmetric(horizontal: 2),
    ),
  );

  static void setStatusBarAndNavBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarIconBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        // systemNavigationBarIconBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        // systemNavigationBarColor: themeMode == ThemeMode.light ? lightBackgroundColor : darkBackgroundColor,
        // systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}
