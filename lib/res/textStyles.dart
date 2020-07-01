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

  static final TextStyle dashboardListTextStyle = TextStyle(
      fontSize:  SizeConfig.divHeight  * 1.9 ,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor
  );
}