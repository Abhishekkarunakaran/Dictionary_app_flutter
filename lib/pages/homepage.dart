// ignore_for_file: prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace

import 'package:dictionary/theme/colors.dart';
import 'package:dictionary/theme/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dtheme _dtheme = Dtheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dtheme.mainColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset('assets/images/dic.png')),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Text(
                        'Dictionary',
                        style: TextStyle(
                          fontFamily: 'Noto-Serif',
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      TextField(                      
                        cursorColor: _dtheme.accentColor,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          suffixIconColor: _dtheme.accentColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: _dtheme.accentColor), 
                            ),
    
                        ),
                        
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
