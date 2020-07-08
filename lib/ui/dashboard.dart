import 'dart:async';

import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:boxbank/res/textStyles.dart';
import 'package:boxbank/widgets/dashboardList.dart';
import 'package:boxbank/widgets/topRect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Timer(Duration(seconds: 2), ()=>{
      Navigator.of(context).pushNamed('/transactions')
    });

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.bgColor,
          body: LayoutBuilder(
            builder: (context, constraints) {
              return OrientationBuilder(builder: (context, orientation) {
                SizeConfig().init(constraints, orientation);
                return Stack(
                  children: <Widget>[
                    TopRect(0.3),
                    Positional(
                      top: 20.0,
                      child: _headText(),
                    ),
                    Positional(
                      top: 50.0,
                      child: _balance(),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10.0, 130, 10.0, 0.0),
                        child: DashboardList()),
                  ],
                );
              });
            },
          ),
          bottomNavigationBar: _bottomBar()),
    );
  }
}

class Positional extends StatelessWidget {
  final double top;
  final Widget child;

  Positional({@required this.top, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      width: SizeConfig().getWidth(),
      child: child,
    );
  }
}

class _headText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Dashboard',
            style: Styles.textStyle2
          ),
          Icon(
            Icons.notifications_none,
            color: AppColors.whiteColor,
            size: SizeConfig.divHeight * 3.7,
          )
        ],
      ),
    );
  }
}

class _balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListTile(
        title: Text("\$4,531.90",
            style: TextStyle(
                fontSize: SizeConfig.divHeight * 2.8,
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor)),
        subtitle: Text(
          "Available Balance",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize:SizeConfig.divHeight * 1.8 ,
              color: AppColors.whiteColor.withOpacity(0.6)),
        ),
      ),
    );
  }
}

class _bottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.apps),title: Text('Dashboard')),
        BottomNavigationBarItem(icon: Icon(Icons.tune),title: Text('Account Settings')),
        BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Profile')),
      ],
    );
  }
}
