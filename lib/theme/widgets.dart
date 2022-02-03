// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, must_be_immutable

import 'package:dictionary/model/jsondata.dart';
import 'package:dictionary/theme/colors.dart';
import 'package:flutter/material.dart';

Dtheme _dtheme = Dtheme();

Widget RetryButton(Function fn) {
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

class PartofSpeech extends StatelessWidget {
  Meaning meaning;

  PartofSpeech({Key? key, required this.meaning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          meaning.partOfSpeech!.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          'definition'.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: _dtheme.accentColor,
          ),
        ),
        Column(
          children: List.generate({meaning.definitions}.length, (index) {
            return Column(
              children: [
                Text(
                  '$index.${meaning.definitions![index]!.definition}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: _dtheme.resultTextColor,
                  ),
                ),
                Row(
                  children: [
                    SAList(
                        title: 'SYNONYMS',
                        words: meaning.definitions![index]!.synonym),
                    SAList(
                        title: 'ANTONYMS',
                        words: meaning.definitions![index]!.antonym)
                  ],
                ),
                Text('eg:\n${meaning.definitions![index]!.example}',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: _dtheme.resultTextColor,
                ),
                )
              ],
            );
          }),
        ),
      ],
    );
  }
}

class SAList extends StatelessWidget {
  String title;
  List<String> words;
  SAList({
    Key? key,
    required this.title,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (words.isNotEmpty) {
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: _dtheme.accentColor,
                ),
              ),
              Text(
                words.length.toString(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFF7C857C),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(words.length, (index) {
              return Text(
                words[index],
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: _dtheme.resultTextColor,
                ),
              );
            }),
          )
        ],
      );
    } else {
      return Container(
        height: 0.0,
      );
    }
  }
}
