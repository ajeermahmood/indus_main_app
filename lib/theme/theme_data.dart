import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class IndusTheme {
  // static final ThemeData lightTheme_ = _buildlightTheme(c);

  static ThemeData buildlightTheme(BuildContext context) {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 182, 146, 41),
        onPrimary: Color.fromARGB(255, 0, 0, 0),
        secondary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFF313a46),
        error: Color(0xFFDC2525),
        onError: Color.fromARGB(255, 249, 207, 207),
        background: Color.fromARGB(255, 255, 255, 255),
        onBackground: Color(0xFFd3ab33),
        onSurface: Colors.white,
        surface: Color(0xFFFFF4DD),
        tertiary: Color.fromARGB(255, 31, 35, 40),
        onTertiaryContainer: Color.fromARGB(255, 250, 235, 191),
        tertiaryContainer: Color.fromARGB(255, 216, 169, 27),
        inversePrimary: Color.fromARGB(255, 69, 88, 115),
        onInverseSurface: Color.fromARGB(255, 231, 231, 231),
        primaryContainer: Color(0xFF313a46),
        secondaryContainer: Color.fromARGB(255, 253, 224, 138),
        onPrimaryContainer: Color.fromARGB(255, 132, 104, 22),
        onSurfaceVariant: Color(0xFFd3e1c6),
        inverseSurface: Color(0xFFf4eacf),
        onSecondaryContainer: Color(0xFFf4eacf),
        outline: Color.fromARGB(255, 178, 143, 40),
        surfaceVariant: Color.fromARGB(255, 69, 88, 115),
        onTertiary: Colors.green,
      ),
      textTheme: customTextTheme(context),
    );
  }

  // static final ThemeData darkTheme_ = _builddarkTheme();

  static ThemeData builddarkTheme(BuildContext context) {
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromARGB(255, 255, 218, 105),
        onPrimary: Color.fromARGB(255, 255, 255, 255),
        secondary: Color.fromARGB(255, 31, 35, 40),
        onSecondary: Color.fromARGB(255, 74, 90, 112),
        error: Color(0xFFDC2525),
        onError: Color.fromARGB(255, 249, 207, 207),
        background: Color.fromARGB(255, 25, 28, 30),
        onBackground: Color.fromARGB(255, 255, 255, 255),
        onSurface: Color(0xFF14232b),
        surface: Color.fromARGB(255, 88, 66, 17),
        tertiary: Color.fromARGB(255, 229, 229, 229),
        onTertiaryContainer: Color.fromARGB(255, 117, 88, 1),
        tertiaryContainer: Color(0xFF313a46),
        inversePrimary: Color.fromARGB(255, 176, 204, 240),
        onInverseSurface: Color.fromARGB(255, 33, 39, 46),
        primaryContainer: Color.fromARGB(255, 62, 83, 110),
        secondaryContainer: Color.fromARGB(255, 163, 174, 153),
        onPrimaryContainer: Color(0xFFd3ab33),
        onSurfaceVariant: Color(0xFF242f1d),
        inverseSurface: Color(0xFF483a18),
        onSecondaryContainer: Color(0xFFf4eacf),
        outline: Color.fromARGB(255, 244, 221, 158),
        surfaceVariant: Color(0xFFd3ab33),
        onTertiary: Colors.green,
      ),
      textTheme: customTextTheme(context),
    );
  }

  static TextTheme customTextTheme(context) {
    return TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
