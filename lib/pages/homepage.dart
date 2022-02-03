// ignore_for_file: prefer_final_fields, prefer_const_constructors, sized_box_for_whitespace

import 'package:dictionary/theme/colors.dart';
// import 'package:dictionary/theme/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Dtheme _dtheme = Dtheme();
  List<String> list = ["Hello", "Dingy", "Pacifist", "Essentialism"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _dtheme.mainColor,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
                left: 0, bottom: 0, child: Image.asset('assets/images/dic.png')),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                // height: MediaQuery.of(context).size.height,
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        'Dictionary',
                        style: TextStyle(
                          fontFamily: 'Noto-Serif',
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: _dtheme.accentColor,
                        ),
                      ),
                      TextField(
                        cursorHeight: 18,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: _dtheme.accentColor,
                        ),
                        cursorColor: _dtheme.accentColor,
                        decoration: InputDecoration(
                          // focusColor: _dtheme.accentColor,
                          suffixIcon: IconButton(
                            onPressed: () {
                              // ignore: todo
                              //TODO: call get fn to api with entered word
                            },
                            icon: Icon(
                              Icons.search,
                              color: _dtheme.accentColor,
                            ),
                          ),
                          // suffixIconColor: _dtheme.accentColor,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: _dtheme.accentColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: _dtheme.accentColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Recent',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: _dtheme.accentColor,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 20),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  // ignore: todo
                                  // TODO: call the get fn with the word in the list.
                                },
                                child: Text(
                                  list[index],
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }),
                      ),
                      Spacer(flex: 3)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
