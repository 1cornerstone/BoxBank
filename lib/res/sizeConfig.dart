import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeConfig{

  static double _screenHeight;
  static double _screenWidth;

  static  double divHeight ;
  static  double divWidth ;


  void init(BoxConstraints constraints, Orientation orientation){

    if (orientation == Orientation.portrait) {
         _screenHeight = constraints.maxHeight;
          _screenWidth = constraints.maxWidth;
//         print('post');

    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight= constraints.maxWidth;
      print('land');
    }

    divHeight = _screenHeight / 100;
    divWidth =  _screenWidth / 100;

//    print(divHeight);
  }

  double getWidth()=> _screenWidth;
  double getHeight()=> _screenHeight;

}