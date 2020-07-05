import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:flutter/cupertino.dart';

class Styles {

  Styles._();


  static final TextStyle appNameStyle = TextStyle(
      fontSize: SizeConfig.divHeight * 3.5 ,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor
  );

  static final TextStyle textStyle = TextStyle(
      fontSize:  SizeConfig.divHeight  * 1.9 ,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor
  );

  static final TextStyle textStyle2 = TextStyle(
      fontSize:  SizeConfig.divHeight  * 2.0 ,
      fontWeight: FontWeight.w800,
      color: AppColors.bgColor,
    letterSpacing: 0.5
  );

  static final TextStyle dropDownTextStyle= TextStyle(
      fontSize:  SizeConfig.divHeight  * 2.0 ,
      fontWeight: FontWeight.w800,

  );
}