import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {

  final String title;
  final  VoidCallback call;

  Topbar({Key key, @required this.title, @required this.call}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: call,
            child: Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor.withOpacity(0.8),
              size: 30,
            ),
          ),
          SizedBox(width: 15,),
          Text(
            title,
            style: Styles.textStyle2,
          )
        ],
      ),
    );
  }
}
