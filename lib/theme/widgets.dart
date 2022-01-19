// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:dictionary/theme/colors.dart';
import 'package:flutter/material.dart';

Widget RetryButton(Function fn) {
  Dtheme _dtheme = Dtheme();
  return Container(
    decoration: BoxDecoration(
      color: _dtheme.accentColor,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 35,
    width: 100,
    child: InkWell(
      splashColor: _dtheme.sanColor,
      child: Center(
        child: Text(
          'RETRY',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
