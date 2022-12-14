import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/loginscreen/loginscreen.dart';
import 'package:adil_project/presentation/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.nunitoSans().fontFamily,
          scaffoldBackgroundColor: kashcolor),
      home: const SpashScreen(),
    );
  }
}
