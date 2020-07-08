import 'package:boxbank/res/appColors.dart';
import 'package:boxbank/res/sizeConfig.dart';
import 'package:boxbank/res/textStyles.dart';
import 'package:boxbank/widgets/TopBar.dart';
import 'package:boxbank/widgets/topRect.dart';
import 'package:boxbank/widgets/transactionsList.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return OrientationBuilder(
              builder: (context, orientation) {
                SizeConfig().init(constraints, orientation);
                return Stack(
                  children: <Widget>[
                    TopRect(0.3),
                   SingleChildScrollView(
                     child: Column(
                       children: <Widget>[
                         Topbar(title: "Transaction", call: ()=> goBack(context),),
                      _dropDown(),
                       _transText(headTitle: 'Today (5 transactions)',tailTitle: 'View All',),
                         _List(list: today5,),
                         _BtransText(headTitle: 'Yesterday (9 transactions)',tailTitle: 'View All',),
                         _List(list: trans9,),
                       ],
                     ),
                   )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

void goBack(BuildContext context) {
  Navigator.of(context).pop();
}

class _dropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    List<String> years = [
      '2013',
      '2014',
      '2015',
      '2016',
      '2017',
      '2018',
      '2019',
      '2020',
    ];

    return Container(
      margin: EdgeInsets.fromLTRB(15.0,10.0,15.0,5.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: 50,
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              onChanged: (String value) {},
              isExpanded: true,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.primaryColor,
              ),
              underline: Container(),
              hint: Text(
                'Month',
                style: Styles.dropDownTextStyle,
              ),
              items: months
                  .map((month) => DropdownMenuItem(
                        child: Text(
                          month,
                          style: Styles.dropDownTextStyle,
                        ),
                        value: month,
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            height: 50,
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.primaryColor,
              ),
              underline: Container(),
              onChanged: (String value) {},
              isExpanded: true,
              hint: Text(
                'Year',
                style: Styles.dropDownTextStyle,
              ),
              items: years
                  .map((year) => DropdownMenuItem(
                        child: Text(
                          year,
                          style: Styles.dropDownTextStyle,
                        ),
                        value: year,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _transText extends StatelessWidget {
  final String headTitle;
  final String tailTitle;

  const _transText({Key key, this.headTitle, this.tailTitle}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
           headTitle,
            style: Styles.textStyle2,
          ),
          Padding(
            padding: const EdgeInsets.only(right:5.0),
            child: FlatButton(
              color: AppColors.whiteColor,
              onPressed: () {},
              child: Text(
                tailTitle,
                style: Styles.dropDownTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BtransText extends StatelessWidget {
  final String headTitle;
  final String tailTitle;

  const _BtransText({Key key, this.headTitle, this.tailTitle}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
           headTitle,
            style: Styles.textStyle3,
          ),
          Padding(
            padding: const EdgeInsets.only(right:5.0),
            child: FlatButton(
              color: AppColors.whiteColor,
              onPressed: () {},
              child: Text(
                tailTitle,
                style: Styles.dropDownTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _List extends StatelessWidget {
  final List list;

  const _List({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.fromLTRB(10.0,1.0,10.0,5.0),
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0)
            ),
            child: Card(
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15.0,5.0,10.0,0.0),
                        child: Icon(list[index].iconData,  color: AppColors.primaryColor.withOpacity(0.7)),
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                      ),
                      SizedBox(width: 5),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                list[index].head,
                                style: Styles.dropDownTextStyle,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text(
                              list[index].tail,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.divHeight * 1.8,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                      margin: EdgeInsets.fromLTRB(0.0,10.0,10.0,0.0),
                    child: Text(
                        ((list[index].type =="debit")? '-' : '+')+ '\$' + list[index].price.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.divHeight * 2.30,
                          color: (list[index].type =="debit")? Colors.red[500] : Colors.orange[400],

                      ),),)
                ],
              )
            ) ,
          );
        });
  }
}

