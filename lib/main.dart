import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData.dark(),
      //theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}