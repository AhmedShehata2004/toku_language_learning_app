import 'package:flutter/material.dart';
import 'package:tucko/models/phrases_model.dart';
import 'package:tucko/widgets/custom_phrases_item.dart';

class PhrasesScreen extends StatelessWidget {
   PhrasesScreen({super.key});
  List<PhrasesModel> phrases = [
    PhrasesModel(
      englishName: 'Where are you going?',
      japaneseName: 'Doko e iku no?',
    ),
    PhrasesModel(
      englishName: 'What is your name?',
      japaneseName: 'O namae wa nandesu ka?',
    ),
    PhrasesModel(
      englishName: 'My name is...',
      japaneseName: 'Watashi no namae wa ... desu.',
    ),
    PhrasesModel(
      englishName: 'How are you feeling?',
      japaneseName: 'Go kibun wa ikagadesu ka?',
    ),
    PhrasesModel(
      englishName: 'I’m feeling good.',
      japaneseName: 'Kibun wa genki desu.',
    ),
    PhrasesModel(
      englishName: 'Are you coming?',
      japaneseName: 'Kimasu ka?',
    ),
    PhrasesModel(
      englishName: 'Yes, I’m coming.',
      japaneseName: 'Hai, kimasu.',
    ),
    PhrasesModel(
      englishName: 'I’m coming.',
      japaneseName: 'Kimasu.',
    ),
    PhrasesModel(
      englishName: 'Let’s go.',
      japaneseName: 'Ikimashou.',
      
    ),
    PhrasesModel(
      englishName: 'Come here.',
      japaneseName: 'Koko e kite.',
    ),
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
        );
      },
      ),
    );

  }
}