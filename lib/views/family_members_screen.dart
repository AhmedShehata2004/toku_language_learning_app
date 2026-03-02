import 'package:flutter/material.dart';
import 'package:tucko/constants/assets.dart';
import 'package:tucko/models/family_members_model.dart';
import 'package:tucko/widgets/custom_item.dart';

class FamilyMembersScreen extends StatelessWidget {
   FamilyMembersScreen({super.key});
  final List<FamilyMembersModel> familyMembers =  [
    FamilyMembersModel(
      englishName: 'father',
      japaneseName: 'chichi',
      imagePath: Assets.imagesFamilyMembersFamilyFather,
      soundPath: Assets.soundsFamilyMembersFather,
      
    ),
     FamilyMembersModel(
      englishName: 'mother',
      japaneseName: 'haha',
      imagePath: Assets.imagesFamilyMembersFamilyMother,
      soundPath: Assets.soundsFamilyMembersMother

    ),
     FamilyMembersModel(
      englishName: 'son',
      japaneseName: 'musuko',
      imagePath: Assets.imagesFamilyMembersFamilySon,
      soundPath: Assets.soundsFamilyMembersSon
    ),
     FamilyMembersModel(
      englishName: 'daughter',
      japaneseName: 'musume',
      imagePath: Assets.imagesFamilyMembersFamilyDaughter,
      soundPath: Assets.soundsFamilyMembersDaughter
    ),
     FamilyMembersModel(
      englishName: 'grandfather',
      japaneseName: 'sofu',
      imagePath: Assets.imagesFamilyMembersFamilyGrandfather,
      soundPath: Assets.soundsFamilyMembersGrandfather
    ),
     FamilyMembersModel(
      englishName: '  grandmother',
      japaneseName: 'sobo',
      imagePath: Assets.imagesFamilyMembersFamilyGrandmother,
      soundPath: Assets.soundsFamilyMembersGrandmother
    ),
     FamilyMembersModel(
      englishName: '  older brother',
      japaneseName: ' nana',
      imagePath: Assets.imagesFamilyMembersFamilyOlderBrother,
      soundPath: Assets.soundsFamilyMembersOlderbother
    ),
     FamilyMembersModel(
      englishName: 'older sister',
      japaneseName: ' ane',
      imagePath: Assets.imagesFamilyMembersFamilyOlderSister,
      soundPath: Assets.soundsFamilyMembersOldersister
    ),
     FamilyMembersModel(
      englishName: 'younger brother',
      japaneseName: 'otouto',
      imagePath: Assets.imagesFamilyMembersFamilyYoungerBrother,
      soundPath: Assets.imagesFamilyMembersFamilyYoungerBrother
    ),
     FamilyMembersModel(
      englishName: 'younger sister',
      japaneseName: 'jūsister',
      imagePath: Assets.imagesFamilyMembersFamilyYoungerSister,
      soundPath: Assets.soundsFamilyMembersYoungersister
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
        backgroundColor: Color(0xff46322B),
        title: const Text('Family Members', style: TextStyle(color: Colors.white,fontSize: 25,),),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return CustomItem(
            backgroundColor: Color.fromARGB(255, 94, 160, 90),
            image: familyMembers[index].imagePath,
           japaneseText: familyMembers[index].japaneseName,
            englishText: familyMembers[index].englishName,
              soundPath: familyMembers[index].soundPath,
            );
        },
      ),
    );
  }
}