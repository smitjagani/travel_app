import 'package:flutter/material.dart';

const int _primaryColor = 0xFF1e92a4;

const MaterialColor primarySwatch = MaterialColor(_primaryColor, <int, Color>{
  /// This is the only difference between light and dark themes
  50: Color(0x181e92a4),
  100: Color(0x331e92a4),
  200: Color(0x4b1e92a4),
  300: Color(0x661e92a4),
  400: Color(0x7e1e92a4),
  500: Color(0x991e92a4), // Adjusted color code
  600: Color(0xb11e92a4),
  700: Color(0xcc1e92a4),
  800: Color(0xe41e92a4),
  900: Color(_primaryColor),
});

const int _textColor = 0xFF64748B;
const MaterialColor textSwatch = MaterialColor(_textColor, <int, Color>{
  /// This is the only difference between light and dark themes
  50: Color(0xFFF8FAFC),
  100: Color(0xFFF1F5F9),
  200: Color(0xFFE2E8F0),
  300: Color(0xFFCBD5E1),
  400: Color(0xFF94A3B8),
  500: Color(_textColor),
  600: Color(0xFF475569),
  700: Color(0xFF334155),
  800: Color(0xFF1E293B),
  900: Color(0xFF0F172A),
});

const Color errorColor = Color(0xFFDC2626);

final ColorScheme lightColorScheme = ColorScheme.light(
  /// This is the only difference between light and dark themes
  primary: primarySwatch.shade900,
  secondary: primarySwatch.shade900,
  onSecondary: Colors.white,
  error: errorColor,
  onSurface: textSwatch.shade500,
  surface: textSwatch.shade100,
  surfaceContainerHighest: Colors.white,
  shadow: textSwatch.shade900.withOpacity(.4),
);

final ColorScheme darkColorScheme = ColorScheme.dark(
  /// This is the only difference between light and dark themes
  primary: primarySwatch.shade900,
  secondary: primarySwatch.shade900,
  onSecondary: Colors.white,
  error: errorColor,
  onSurface: textSwatch.shade300,
  surface: const Color(0xFF262630),
  surfaceContainerHighest: const Color(0xFF282832),
  shadow: textSwatch.shade900.withOpacity(.2),
);

final ThemeData lightTheme = ThemeData(
  colorScheme: lightColorScheme,
  fontFamily: 'Outfit',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    /// This is the color of the checkbox when selected
    fillColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      /// This is the color of the checkbox when disabled
      if (states.contains(WidgetState.disabled)) {
        /// This is the color of the checkbox when disabled
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        /// This is the color of the checkbox when selected
        return primarySwatch.shade900;
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      /// This is the color of the radio button when disabled
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade900;
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    /// This is the color of the switch when selected
    thumbColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade900;
      }
      return null;
    }),
    trackColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      /// This is the color of the switch when not selected
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade200;
      }
      return null;
    }),
  ),
);

final ThemeData darkTheme = lightTheme.copyWith(
  colorScheme: darkColorScheme,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      fontFamily: 'Outfit',
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade900;
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade900;
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade900;
      }
      return null;
    }),
    trackColor:
        WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) {
        return null;
      }
      if (states.contains(WidgetState.selected)) {
        return primarySwatch.shade200;
      }
      return null;
    }),
  ),
);
