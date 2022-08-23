import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  late Color color;

  final String text;

  StoryItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      margin: const EdgeInsets.only(left: 20),
      height: 180,
      width: 130,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
