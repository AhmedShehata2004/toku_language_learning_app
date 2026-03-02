import 'package:flutter/material.dart';
import 'package:tucko/constants/assets.dart';
import 'package:tucko/widgets/custom_item.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});
  List colors = [
    {
      'englishName': 'red',
      'japaneseName': 'aka',
      'imagePath': Assets.imagesColorsColorRed,
    },
    {
      'englishName': 'green',
      'japaneseName': 'midori',
      'imagePath': Assets.imagesColorsColorGreen,
    },
    {
      'englishName': 'brown',
      'japaneseName': 'chairo',
      'imagePath': Assets.imagesColorsColorBrown,
    },
    {
      'englishName': 'gray',
      'japaneseName': 'haiiro',
      'imagePath': Assets.imagesColorsColorGray,
    },
    {
      'englishName': 'black',
      'japaneseName': 'kuro',
      'imagePath': Assets.imagesColorsColorBlack,
    },
    {
      'englishName': 'white',
      'japaneseName': 'shiro',
      'imagePath': Assets.imagesColorsColorWhite,
    },
    {
      'englishName': 'dusty yellow',
      'japaneseName': 'kiiro',
      'imagePath': Assets.imagesColorsColorDustyYellow,
    },
    {
      'englishName': 'mustard yellow',
      'japaneseName': 'karashi iro',
      'imagePath': Assets.imagesColorsYellow,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Colors', style: TextStyle(color: Colors.white, fontSize: 25,),),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return CustomItem(
            backgroundColor: Color(0xff7B3E98),
            image: colors[index]['imagePath'],
            japaneseText: colors[index]['japaneseName'],
            englishText: colors[index]['englishName'],
            );
        },
      ),
    );
  }
}