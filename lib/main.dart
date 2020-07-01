import 'package:boxbank/ui/dashboard.dart';
import 'package:boxbank/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:boxbank/res/appColors.dart';

void main() {


  runApp(MaterialApp(
    initialRoute:'/splash',
    routes: {
      '/splash' : (context) => Splashscreen(),
      '/board' : (context) => Dashboard()

    },
    theme: ThemeData(
      primaryColor: AppColors.primaryColor ,
      accentColor: AppColors.whiteColor ,
    ),
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
    title: "Box Bank",
  ));
}

