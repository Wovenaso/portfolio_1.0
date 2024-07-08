import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.black87,
      fontFamily: GoogleFonts.inter().fontFamily,
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      foregroundColor: Colors.black,
      color: Colors.transparent,
      elevation: 1,
      centerTitle: true);
}

const LinearGradient gradienteFondo = LinearGradient(
  colors: [
    Color.fromARGB(255, 248, 172, 66),
    Color.fromARGB(255, 255, 213, 155),
    Color.fromARGB(255, 211, 254, 255),
    Color.fromARGB(255, 153, 238, 241)
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

class CustomFonts {
  static TextStyle titulosEstilo =
      GoogleFonts.inter(fontSize: 35, fontWeight: FontWeight.w700);

  static TextStyle subtitulosEstilo =
      GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.w600);

  static TextStyle textoEstilo =
      GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w200);

  static TextStyle titulosCardEstilo =
      GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w700);

  static TextStyle subtitulosCardEstilo =
      GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600);

  static TextStyle textoCardEstilo =
      GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w300);

  static TextStyle botonTextoEstilo = GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle drawerTextoTileEstilo = GoogleFonts.inter(
      fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black87);
}

class CustomFontsMobile {
  static TextStyle titulosEstilo =
      GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.w700);

  static TextStyle subtitulosEstilo =
      GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600);

  static TextStyle textoEstilo =
      GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w200);

  static TextStyle titulosCardEstilo =
      GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.w700);

  static TextStyle subtitulosCardEstilo =
      GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600);

  static TextStyle textoCardEstilo =
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w300);

  static TextStyle botonTextoEstilo = GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle drawerTextoTileEstilo = GoogleFonts.inter(
      fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black87);
}

class CustomColors {
  static const Color backgroundScaffold = Colors.black87;
  static const Color bottomNavBar = Colors.black87;
  static const Color bottomNavBaraActivePage =
      Color.fromARGB(121, 89, 129, 148);
  static const Color bgLight1 = Color(0xff333646);
  static const Color bgLight2 = Color(0xff424657);
  static const Color textField = Color(0xffC8C9CE);
  static const Color hintDark = Colors.white;
  static const Color blueSecundary = Color(0xffB3E5FC);
  static const Color bluePrimary = Color(0xff81D4FA);
  static const Color whitePrimary = Color(0xffEAEAEB);
  static const Color whiteSecundary = Color(0xffC8C9CE);
  static const Color headersPrimary = Colors.black;
  static const Color iconColor = Colors.black87;
}
