import 'package:flutter/material.dart';
import 'package:tucko/constants/assets.dart';
import 'package:tucko/models/number.dart';
import 'package:tucko/widgets/custom_item.dart';

class NumbersScreen extends StatelessWidget {
   NumbersScreen({super.key});
  final List<Number> numbers =  [
    Number(
      englishName: 'one',
      japaneseName: 'ichi',
      imagePath: Assets.imagesNumbersNumberOne,
    ),
     Number(
      englishName: 'two',
      japaneseName: 'ni',
      imagePath: Assets.imagesNumbersNumberTwo,
    ),
     Number(
      englishName: 'three',
      japaneseName: 'san',
      imagePath: Assets.imagesNumbersNumberThree,
    ),
     Number(
      englishName: 'four',
      japaneseName: 'yon',
      imagePath: Assets.imagesNumbersNumberFour,
    ),
     Number(
      englishName: 'five',
      japaneseName: 'go',
      imagePath: Assets.imagesNumbersNumberFive,
    ),
     Number(
      englishName: 'six',
      japaneseName: 'roku',
      imagePath: Assets.imagesNumbersNumberSix,
    ),
     Number(
      englishName: 'seven',
      japaneseName: 'nana',
      imagePath: Assets.imagesNumbersNumberSeven,
    ),
     Number(
      englishName: 'eight',
      japaneseName: 'hachi',
      imagePath: Assets.imagesNumbersNumberEight,
    ),
     Number(
      englishName: 'nine',
      japaneseName: 'kyu',
      imagePath: Assets.imagesNumbersNumberNine,
    ),
     Number(
      englishName: 'ten',
      japaneseName: 'juu',
      imagePath: Assets.imagesNumbersNumberTen,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return CustomItem(
            backgroundColor:  Color(0xffEF9235),
            image: numbers[index].imagePath,
            japaneseText: numbers[index].japaneseName,
            englishText: numbers[index].englishName,
            )
          ;
        },
      )
    );
  }
}
