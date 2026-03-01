import 'package:flutter/material.dart';

class CustomSectionContainer extends StatelessWidget {
  CustomSectionContainer({
    super.key,
    required this.containerColor,
    required this.text,
    this.onTap,
  });
  Color containerColor;
  String text;
  VoidCallback? onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: containerColor,
        child: Text(text,
         style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
