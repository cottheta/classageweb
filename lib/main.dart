import 'package:classage/download/dmacos.dart';
import 'package:classage/responsive/myLayout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        textTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 55, color: Colors.black87),
          headline2: TextStyle(color: Colors.black87),
          button: TextStyle(fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16),
          bodyText2: TextStyle(fontSize: 16, color: Colors.blue,)

        )
      ),
      home: MainScreen(),
    );
  }
}
