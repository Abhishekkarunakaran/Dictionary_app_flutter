// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:dictionary/model/jsondata.dart';
import 'package:dictionary/theme/colors.dart';
import 'package:dictionary/theme/widgets.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  
  const ResultPage({Key? key,}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final Dtheme _dtheme = Dtheme();

  Model data = Model('hello', [Meaning("asdfasd", [Definition("fghdfg", [], [],"djhdghjd")])], "sdafsdfa");

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: _dtheme.mainColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // ignore: todo
                  // TODO: To add back to homepage function
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: _dtheme.accentColor,
                  size: 35,
                ),
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
              Expanded(
                  child: Container(
                color: Colors.transparent,
              ))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${data.word}',
                  style: TextStyle(
                    fontFamily: 'Noto-Serif',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // ignore: todo
                    // TODO: Add fn to play audio online
                  },
                  icon: Icon(
                    Icons.volume_up,
                    size: 25,
                    color: _dtheme.accentColor,
                  ),
                ),
                Column(
                  children: [
                    Column(
                        children:
                            List.generate({data.meanings}.length, (index) {
                      return PartofSpeech(meaning: data.meanings[index]);
                    }),
                    ),
                    Divider(color: _dtheme.accentColor,)
                  ],
                ),
                data.origin != null?
                Column(
                  children: [Text('ORIGIN',
                style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: _dtheme.accentColor,
          ),
                ),
                Text(data.origin!,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: _dtheme.resultTextColor,
                  ),
                )],
                ):
                Container(height: 0.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
