// ignore_for_file: prefer_const_constructors

import 'package:dictionary/theme/colors.dart';
import 'package:dictionary/theme/widgets.dart';
import "package:flutter/material.dart";

class NoConnectionPage extends StatelessWidget {
  const NoConnectionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dtheme _dtheme = Dtheme();
    String description = "Please check your internet connection.\n It looks like you’re not connected to the internet.";
    return SafeArea(
      child: Scaffold(
        backgroundColor: _dtheme.mainColor,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/no_network.png',),
          SizedBox(height: 50,),
          Text('No internet connection',
          style:TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding:EdgeInsets.only(
              left:25.0,bottom:50.0,right:25.0,top:10.0
              ),
            child: Text(description,
            style: TextStyle(
              color: _dtheme.descriptionColor,
              fontSize: 13,
              fontFamily: 'Poppins'
            ),
            textAlign: TextAlign.center,
            ),
          ),
          RetryButton(
            ()=>{}
            )
        ]),
      )
    );
  }
}