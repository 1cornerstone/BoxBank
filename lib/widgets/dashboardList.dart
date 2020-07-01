

import 'package:boxbank/model/dashboardModel.dart';
import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:boxbank/res/textStyles.dart';
import 'package:flutter/material.dart';

List<dashboardModel> _list = [
  dashboardModel(Icons.swap_horiz, 'Transactions'),
  dashboardModel(Icons.attach_money, 'Transfer Money'),
  dashboardModel(Icons.pie_chart, 'A/C Statistics'),
  dashboardModel(Icons.collections_bookmark, 'Statements'),
  dashboardModel(Icons.question_answer, 'FAQ`s'),
  dashboardModel(Icons.headset, 'Customer Care'),
];




class DashboardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
        physics: BouncingScrollPhysics(),
        childAspectRatio: 2.5/2,
      children: List.generate(_list.length, (index){
        return Card(
          elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                _list[index].iconData,
                color: AppColors.primaryColor.withOpacity(0.8),
                size: SizeConfig().getHeight() * 0.06,

              ),
              SizedBox(height: 20,),
              Text(
                _list[index].label,
                textAlign: TextAlign.center,
                style: Styles.dashboardListTextStyle,
              )
            ],
          ),
        );
      })
    );
  }
}
