import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final controller;
  const MyTextfield({super.key, required this.obscureText, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400
            )
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText 
        ),
        controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}