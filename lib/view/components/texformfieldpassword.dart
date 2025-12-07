import 'package:flutter/material.dart';

class Texformfieldpassword extends StatelessWidget {
  final String hinttext;
  final Color hintstylecolor;
  final Color style;
  final IconData icon;
  final TextEditingController controller;
  const Texformfieldpassword({super.key,
    required this.hinttext,
    this.style=Colors.black54,
    required this.controller,
    this.hintstylecolor=Colors.black54,
    this.icon=Icons.keyboard_arrow_down_rounded,

  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3,left: 10),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color:style ),
          decoration: InputDecoration(
            hintText: hinttext,
            suffixIcon: Icon(icon,size: 20,),
            border: InputBorder.none,
            hintStyle: TextStyle(color: hintstylecolor),
          ),
        ),
      ),
    );
  }
}
