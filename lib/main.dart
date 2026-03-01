import 'package:flutter/material.dart';
import 'package:tucko/views/colors_Screen.dart';
import 'package:tucko/views/family_members_screen.dart';
import 'package:tucko/views/home_screen.dart';
import 'package:tucko/views/numbers_screen.dart';
import 'package:tucko/views/phrases_Screen.dart';

void main() {
  runApp( TukoApp());
}

class TukoApp extends StatelessWidget {
   TukoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/numbers': (context) =>  NumbersScreen(),
        '/family_members': (context) =>  FamilyMembersScreen(),
        '/colors': (context) => const ColorsScreen(),
        '/phrases': (context) => const PhrasesScreen(),
      },
    );
  }
}
