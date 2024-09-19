import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String filePath;
  const CustomIcon({super.key, required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Image.asset(
        filePath,
        height: 54,
      ),
    );
  }
}