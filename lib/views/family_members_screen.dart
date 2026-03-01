import 'package:flutter/material.dart';


class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

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
     
    );
  }
}