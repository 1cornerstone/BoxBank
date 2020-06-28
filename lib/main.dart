import 'package:boxbank/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {

  Color priColor = const Color(0xFF342ead);

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: priColor ,
      accentColor: Colors.white,
//      backgroundColor: const Color(0xFF292D32)
    ),
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
    title: "Box Bank",
  ));
}

