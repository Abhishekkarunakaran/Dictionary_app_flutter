// ignore_for_file: prefer_const_constructors

import 'package:dictionary/theme/colors.dart';
import 'package:dictionary/theme/widgets.dart';
import "package:flutter/material.dart";

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    Dtheme _dtheme = Dtheme();
    String description = "Word not found or doesn’t exist.\nTry another one.";
    return SafeArea(
        child: Scaffold(
      backgroundColor: _dtheme.mainColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/not_found.png',
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'OOPS...!',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 25.0, bottom: 50.0, right: 25.0, top: 10.0),
            child: Text(
              description,
              style: TextStyle(
                  color: _dtheme.descriptionColor,
                  fontSize: 13,
                  fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
          ),
          RetryButton((){})
        ]),
      ),
    ));
  }
}
