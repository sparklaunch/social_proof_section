import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_proof_section/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: MainScreen(),
      ),
    ),
  );
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
    textTheme: GoogleFonts.leagueSpartanTextTheme(baseTheme.textTheme),
  );
}
