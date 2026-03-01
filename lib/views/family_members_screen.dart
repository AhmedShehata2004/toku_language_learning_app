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
      imagePath: Assets.imagesFamilyMembersFamilyFather
      ,
    ),
     FamilyMembersModel(
      englishName: 'mother',
      japaneseName: 'haha',
      imagePath: Assets.imagesFamilyMembersFamilyMother,

    ),
     FamilyMembersModel(
      englishName: 'son',
      japaneseName: 'musuko',
      imagePath: Assets.imagesFamilyMembersFamilySon,
    ),
     FamilyMembersModel(
      englishName: 'daughter',
      japaneseName: 'musume',
      imagePath: Assets.imagesFamilyMembersFamilyDaughter,
    ),
     FamilyMembersModel(
      englishName: 'grandfather',
      japaneseName: 'sofu',
      imagePath: Assets.imagesFamilyMembersFamilyGrandfather,
    ),
     FamilyMembersModel(
      englishName: '  grandmother',
      japaneseName: 'sobo',
      imagePath: Assets.imagesFamilyMembersFamilyGrandmother,
    ),
     FamilyMembersModel(
      englishName: '  older brother',
      japaneseName: ' nana',
      imagePath: Assets.imagesFamilyMembersFamilyOlderBrother,
    ),
     FamilyMembersModel(
      englishName: 'older sister',
      japaneseName: ' ane',
      imagePath: Assets.imagesFamilyMembersFamilyOlderSister,
    ),
     FamilyMembersModel(
      englishName: 'younger brother',
      japaneseName: 'otouto',
      imagePath: Assets.imagesFamilyMembersFamilyYoungerBrother,
    ),
     FamilyMembersModel(
      englishName: 'younger sister',
      japaneseName: 'jūsister',
      imagePath: Assets.imagesFamilyMembersFamilyYoungerSister,
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
            );
        },
      ),
    );
  }
}