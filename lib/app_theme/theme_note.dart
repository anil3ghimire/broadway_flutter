import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // LIGHT THEME
      theme: AppTheme.lightTheme,

      // DARK THEME
      darkTheme: AppTheme.darkTheme,

      // SYSTEM THEME
      // Automatically changes based on phone setting
      themeMode: ThemeMode.system,

      home: const HomeScreen(),
    );
  }
}

/// ======================================================
/// APP COLORS
/// ======================================================
///
/// Best Practice:
/// Never use colors directly everywhere.
///
/// BAD:
/// color: Colors.blue
///
/// GOOD:
/// color: AppColors.primary
///
/// Why?
/// - Easy maintenance
/// - Reusable
/// - Consistent UI
///
/// ======================================================

class AppColors {
  static const Color primary = Color(0xFF6750A4);

  static const Color secondary = Color(0xFFE63946);

  static const Color white = Colors.white;

  static const Color black = Colors.black;

  static const Color grey = Colors.grey;

  static const Color scaffoldLight = Color(0xFFF5F5F5);

  static const Color scaffoldDark = Color(0xFF121212);

  static const Color textDark = Colors.black;

  static const Color textLight = Colors.white;
}

/// ======================================================
/// APP SPACING
/// ======================================================
///
/// Best Practice:
/// Keep spacing centralized.
///
/// Avoid:
/// SizedBox(height: 17)
/// SizedBox(height: 29)
///
/// Use:
/// AppSpacing.medium
///
/// ======================================================

class AppSpacing {
  static const double small = 8;

  static const double medium = 16;

  static const double large = 24;

  static const double extraLarge = 40;
}

/// ======================================================
/// APP RADIUS
/// ======================================================
///
/// Centralized border radius values.
///
/// ======================================================

class AppRadius {
  static const double small = 8;

  static const double medium = 12;

  static const double large = 20;
}

/// ======================================================
/// APP TEXT THEME
/// ======================================================
///
/// Controls all text styling globally.
///
/// Instead of writing:
///
/// TextStyle(fontSize: 18)
///
/// everywhere.
///
/// We use:
///
/// Theme.of(context).textTheme.bodyLarge
///
/// ======================================================

class AppTextTheme {
  // LIGHT TEXT THEME
  static TextTheme lightTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),

    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.textDark,
    ),

    bodyLarge: TextStyle(fontSize: 18, color: AppColors.textDark),

    bodyMedium: TextStyle(fontSize: 14, color: AppColors.grey),
  );

  // DARK TEXT THEME
  static TextTheme darkTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.textLight,
    ),

    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.textLight,
    ),

    bodyLarge: TextStyle(fontSize: 18, color: AppColors.textLight),

    bodyMedium: TextStyle(fontSize: 14, color: AppColors.grey),
  );
}

/// ======================================================
/// APP THEME
/// ======================================================
///
/// ThemeData is the heart of Flutter theming.
///
/// It controls:
/// - Colors
/// - Typography
/// - Buttons
/// - TextFields
/// - AppBar
/// - Cards
/// - Navigation
///
/// ======================================================

class AppTheme {
  /// LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    // PRIMARY COLOR
    primaryColor: AppColors.primary,

    // BACKGROUND COLOR
    scaffoldBackgroundColor: AppColors.scaffoldLight,

    /// ==================================================
    /// APP BAR THEME
    /// ==================================================
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,

      foregroundColor: AppColors.white,

      centerTitle: true,

      elevation: 0,
    ),

    /// ==================================================
    /// TEXT THEME
    /// ==================================================
    textTheme: AppTextTheme.lightTextTheme,

    /// ==================================================
    /// ELEVATED BUTTON THEME
    /// ==================================================
    ///
    /// Controls all ElevatedButtons globally.
    ///
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,

        foregroundColor: AppColors.white,

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
      ),
    ),

    /// ==================================================
    /// INPUT DECORATION THEME
    /// ==================================================
    ///
    /// Controls TextField globally.
    ///
    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: AppColors.white,

      hintStyle: const TextStyle(color: AppColors.grey),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),

        borderSide: const BorderSide(color: AppColors.grey),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),

        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
    ),

    /// ==================================================
    /// CARD THEME
    /// ==================================================
    cardTheme: CardThemeData(
      color: AppColors.white,

      elevation: 2,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
    ),
  );

  /// DARK THEME
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.scaffoldDark,

    primaryColor: AppColors.primary,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black,

      foregroundColor: AppColors.white,
    ),

    textTheme: AppTextTheme.darkTextTheme,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,

        foregroundColor: AppColors.white,
      ),
    ),
  );
}

/// ======================================================
/// THEME EXTENSION
/// ======================================================
///
/// Advanced Professional Practice.
///
/// Instead of:
///
/// Theme.of(context).textTheme
///
/// We can write:
///
/// context.textTheme
///
/// Cleaner code.
///
/// ======================================================

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

/// ======================================================
/// HOME SCREEN
/// ======================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Theming")),

      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            /// ============================================
            /// HEADING
            /// ============================================
            Text("Welcome Students", style: context.textTheme.headlineLarge),

            const SizedBox(height: AppSpacing.small),

            /// ============================================
            /// DESCRIPTION
            /// ============================================
            Text(
              "This UI is using centralized theming with best practices.",
              style: context.textTheme.bodyLarge,
            ),

            const SizedBox(height: AppSpacing.large),

            /// ============================================
            /// TEXT FIELD
            /// ============================================
            const TextField(
              decoration: InputDecoration(hintText: "Enter your email"),
            ),

            const SizedBox(height: AppSpacing.large),

            /// ============================================
            /// BUTTON
            /// ============================================
            ElevatedButton(onPressed: () {}, child: const Text("Login")),

            const SizedBox(height: AppSpacing.large),

            /// ============================================
            /// CARD
            /// ============================================
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.medium),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "Card Widget",
                      style: context.textTheme.headlineMedium,
                    ),

                    const SizedBox(height: AppSpacing.small),

                    Text(
                      "This card automatically uses global card theme.",
                      style: context.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
