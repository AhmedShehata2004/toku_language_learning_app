import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomPhrasesItem extends StatelessWidget {
  const CustomPhrasesItem({
    super.key,
    required this.japaneseText,
    required this.englishText,
    required this.backgroundColor,
    required this.soundPath,
  });
  final String japaneseText;
  final String englishText;
  final Color backgroundColor;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Container(
      height: 120,
      color: backgroundColor,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    japaneseText,
                    style: textStyle,
                  ),
                  Text(
                    englishText,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.play_arrow, color: Colors.white),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(soundPath));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
