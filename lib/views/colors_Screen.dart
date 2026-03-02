import 'package:flutter/material.dart';
import 'package:tucko/constants/assets.dart';
import 'package:tucko/models/colors_model.dart';
import 'package:tucko/widgets/custom_item.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});
  List <ColorsModel> colors = [
    ColorsModel(
      englishName: 'red',
      japaneseName: 'aka',
      imagePath: Assets.imagesColorsColorRed,
      soundPath: Assets.soundsColorsRed,
    ),
    ColorsModel(
      englishName: 'green',
      japaneseName: 'midori',
      imagePath: Assets.imagesColorsColorGreen,
      soundPath: Assets.soundsColorsGreen
    ),
    ColorsModel(
      englishName: 'brown',
      japaneseName: 'chairo',
      imagePath: Assets.imagesColorsColorBrown,
      soundPath: Assets.soundsColorsBrown
    ),
    ColorsModel(
      englishName: 'gray',
      japaneseName: 'haiiro',
      imagePath: Assets.imagesColorsColorGray,
      soundPath: Assets.soundsColorsGray
    ),
    ColorsModel(
      englishName: 'black',
      japaneseName: 'kuro',
      imagePath: Assets.imagesColorsColorBlack,
      soundPath: Assets.soundsColorsBlack
    ),
    ColorsModel(
      englishName: 'white',
      japaneseName: 'shiro',
      imagePath: Assets.imagesColorsColorWhite,
      soundPath: Assets.soundsColorsWhite
    ),
    ColorsModel(
      englishName: 'dusty yellow',
      japaneseName: 'kiiro',
      imagePath: Assets.imagesColorsColorDustyYellow,
      soundPath: Assets.imagesColorsColorDustyYellow
    ),
    ColorsModel(
      englishName: 'mustard yellow',
      japaneseName: 'karashi iro',
      imagePath: Assets.imagesColorsYellow,
      soundPath: Assets.soundsColorsYellow
    ),
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
            image: colors[index].imagePath,
            japaneseText: colors[index].japaneseName,
            englishText: colors[index].englishName,
            soundPath: colors[index].soundPath,
            );
        },
      ),
    );
  }
}