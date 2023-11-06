import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    scaffoldBackgroundColor: lightGreenColor,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(
          fontSize: 18, fontWeight: FontWeight.w600, color: lightColor),
      bodySmall: GoogleFonts.roboto(
          fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Colors.grey.shade400,
      selectedItemColor: lightColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColor,
      iconTheme: IconThemeData(color: Colors.black54, size: 30),
    ),
  );
//static ThemeData darkTheme = ThemeData(
//       primaryColor: darkColor,
//       scaffoldBackgroundColor: Colors.transparent,
//       colorScheme: ColorScheme(
//           brightness: Brightness.dark,
//           primary: darkColor,
//           onPrimary: yellowColor,
//           secondary: darkColor,
//           onSecondary: Colors.white,
//           error: Colors.red,
//           onError: Colors.white,
//           background: Colors.transparent,
//           onBackground: yellowColor,
//           surface: Colors.white,
//           onSurface: darkColor),
//       textTheme: TextTheme(
//           bodyLarge: GoogleFonts.elMessiri(
//               fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//           bodyMedium: GoogleFonts.elMessiri(
//               fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
//           titleSmall: GoogleFonts.elMessiri(
//               fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//           bodySmall: GoogleFonts.elMessiri(
//               fontSize: 20, fontWeight: FontWeight.w300, color: yellowColor)),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           backgroundColor: darkColor,
//           type: BottomNavigationBarType.shifting,
//           unselectedItemColor: Colors.white,
//           selectedItemColor: yellowColor,
//           selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
//           unselectedLabelStyle: GoogleFonts.quicksand(
//             fontSize: 12,
//           )),
//       appBarTheme: AppBarTheme(
//           backgroundColor: Colors.transparent,
//           iconTheme: IconThemeData(color: Colors.white, size: 30),
//           elevation: 0.0,
//           centerTitle: true));
}
