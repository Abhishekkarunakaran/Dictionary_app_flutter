// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, must_be_immutable

import 'package:dictionary/model/jsondata.dart';
import 'package:dictionary/theme/colors.dart';
import 'package:flutter/material.dart';

Dtheme _dtheme = Dtheme();

Widget RetryButton(Function fn) {
  return Ink(
    decoration: BoxDecoration(
      color: _dtheme.accentColor,
      borderRadius: BorderRadius.circular(10),
    ),
    height: 35,
    width: 120,
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ()=>fn,
      splashColor: Colors.green.withOpacity(0.5),
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: meaning.definitions.asMap().keys.toList().map((index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${index + 1}. ${meaning.definitions[index].definition}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: _dtheme.resultTextColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    meaning.definitions[index].synonym.isNotEmpty ||
                            meaning.definitions[index].antonym.isNotEmpty
                        ? SAList(
                            title: 'SYNONYMS',
                            words: meaning.definitions[index].synonym)
                        : SAList(title: 'SYNONYMS', words: const ["..."]),
                    SAList(
                        title: 'ANTONYMS',
                        words: meaning.definitions[index].antonym)
                  ],
                ),
                Text(
                  'eg:\n${meaning.definitions[index].example}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: _dtheme.resultTextColor,
                  ),
                )
              ],
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Divider(
            color: _dtheme.accentColor,
            thickness: 1.5,
          ),
        )
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
      return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: 5,
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
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: _dtheme.resultTextColor,
                  ),
                );
              }),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 0.0,
      );
    }
  }
}
