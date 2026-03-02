import 'package:flutter/material.dart';

class CustomPhrasesItem extends StatelessWidget {
  const CustomPhrasesItem({
    super.key,
    required this.japaneseText,
    required this.englishText,
    required this.backgroundColor,
  });
  final String japaneseText;
  final String englishText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: backgroundColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  japaneseText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  englishText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.play_arrow, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
