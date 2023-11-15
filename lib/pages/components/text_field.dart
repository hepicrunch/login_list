import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
    required this.hintext,
    required this.obsecuretext,
  });

  final double width;
  final double height;
  final controller;
  final String hintext;
  final bool obsecuretext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width,
        right: width,
        top: height,
      ),
      child: TextField(
        controller: controller,
        obscureText: obsecuretext,
        decoration: InputDecoration(
          hintText: hintext,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(4),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
