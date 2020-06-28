import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
       body: Center(
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
              color: Color(0xFFEFEEEE),
              borderRadius: BorderRadius.circular(12.0),
              ),
      ),
             SizedBox(height: 34,),
             Text(
               'Box Bank',
               style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: Theme.of(context).primaryColor
               ),
             )
           ],
         ),
       )
    );
  }
}
