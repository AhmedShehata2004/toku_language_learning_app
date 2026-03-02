import 'package:flutter/material.dart';
import 'package:tucko/constants/assets.dart';
import 'package:tucko/models/phrases_model.dart';
import 'package:tucko/widgets/custom_phrases_item.dart';

class PhrasesScreen extends StatelessWidget {
   PhrasesScreen({super.key});
  List<PhrasesModel> phrases = [
    PhrasesModel(
      englishName: 'Where are you going?',
      japaneseName: 'Doko e iku no?',
      soundPath: Assets.soundsPhrasesWhereAreYouGoing,
    ),
    PhrasesModel(
      englishName: 'What is your name?',
      japaneseName: 'O namae wa nandesu ka?',
      soundPath: Assets.soundsPhrasesWhatIsYourName,
    ),
    PhrasesModel(
      englishName: 'donot forget to subscribe',
      japaneseName: 'Kōdoku suru koto o wasurenaide kudasai',
      soundPath: Assets.soundsPhrasesDontForgetToSubscribe,
    ),
    PhrasesModel(
      englishName: 'How are you feeling?',
      japaneseName: 'Go kibun wa ikagadesu ka?',
      soundPath: Assets.soundsPhrasesHowAreYouFeeling,
    ),
    PhrasesModel(
      englishName: 'i love programming',
      japaneseName: 'Watashi wa puroguramingu ga daisuki desu',
      soundPath: Assets.soundsPhrasesILoveProgramming,
    ),
    PhrasesModel(
      englishName: 'Are you coming?',
      japaneseName: 'Kimasu ka?',
      soundPath: Assets.soundsPhrasesAreYouComing,
    ),
    PhrasesModel(
      englishName: 'Yes, I’m coming.',
      japaneseName: 'Hai, kimasu.',
      soundPath: Assets.soundsPhrasesYesImComing,
    ),
    PhrasesModel(
      englishName: 'I’m coming.',
      japaneseName: 'Kimasu.',
      soundPath: Assets.soundsPhrasesYesImComing,
    ),
    PhrasesModel(
      englishName: 'i love anime',
      japaneseName: 'Watashi wa anime ga daisuki desu.',
      soundPath: Assets.soundsPhrasesILoveAnime,
    )
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Phrases', style: TextStyle(color: Colors.white, fontSize: 25,),),
         backgroundColor: Color(0xff46322B),),

      body:ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
        return CustomPhrasesItem(
          backgroundColor:Color(0xff50ADC7),
          japaneseText: phrases[index].japaneseName,
          englishText: phrases[index].englishName,
          soundPath: phrases[index].soundPath,
        );
      },
      ),
    );

  }
}