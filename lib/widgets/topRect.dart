
import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:flutter/material.dart';

class TopRect extends StatelessWidget {
  final divisor ;

  TopRect(this.divisor);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: SizeConfig().getHeight() * divisor,
      color: AppColors.primaryColor,
    );
  }
}
