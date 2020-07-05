import 'dart:async';

import 'package:boxbank/res/Strings.dart';
import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:boxbank/res/textStyles.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 2), ()=>{
      Navigator.of(context).pushReplacementNamed('/board')
    });


    return Scaffold(
      backgroundColor: AppColors.bgColor,
       body: LayoutBuilder(
         builder: (context,constraints){
            return OrientationBuilder(
              builder: (context,orientation){
                SizeConfig().init(constraints, orientation);
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-6.0, -6.0),
                                blurRadius: 16.0,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 16.0,
                              ),
                            ],
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(12.0)
                        ),

                        child:  Text(
                          Strings.appLetter,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor
                          ),
                        ),
                      ),
                      SizedBox(height: 34,),
                      Text(
                          Strings.appName,
                          style: Styles.appNameStyle
                      )
                    ],
                  ),
                );
              },
            );
         },
       )
    );
  }
}
