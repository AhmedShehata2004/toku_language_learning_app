import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class CustomItem extends StatelessWidget {
  const CustomItem({super.key, this.soundPath ,required this.image, required this.backgroundColor, required this.japaneseText, required this.englishText});
  final String image;
  final String japaneseText;
  final String englishText;
  final Color backgroundColor;
  final String? soundPath;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: backgroundColor,
        child: Row(
          children: [
            Container(
            color: Color(0xffFFF6DC), 
           child: Image.asset(image,),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(japaneseText, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  Text(englishText, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.play_arrow, color: Colors.white),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(soundPath!));


                },
              ),
            ),
          ],
           ),
          
           
          

          
        
      );
  }
}