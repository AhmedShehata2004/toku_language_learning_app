import 'package:flutter/material.dart';
import 'package:tucko/widgets/custom_section_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          centerTitle: true,
          title: const Text(
            'Toku',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30,),
          ),
        ),
        body: Column(
          children: [

          CustomSectionContainer(containerColor: Color(0xffEF9235),
           text: 'Numbers',
           onTap: () {
             Navigator.pushNamed(context, '/numbers');
           },
           ),
          CustomSectionContainer(containerColor: Color.fromARGB(255, 94, 160, 90), text: 'Family Members',
          onTap: () {
             Navigator.pushNamed(context, '/family_members');
           },
          ),
          CustomSectionContainer(containerColor: Color(0xff50ADC7), text: 'Colors',
          onTap: () {
             Navigator.pushNamed(context, '/colors');
           },
          ),
          CustomSectionContainer(containerColor: Color(0xff7B3E98), text: 'Phrases',
          onTap: () {
             Navigator.pushNamed(context, '/phrases');
           },
          ),
           
          ],
        ),
      ),
    );
  }
}
