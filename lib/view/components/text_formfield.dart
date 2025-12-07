import 'package:bankapp/view/utils/constants/style_color.dart';
import 'package:flutter/material.dart';

class TextFormfield extends StatelessWidget {
  final String hinttext;
  final Color hintstylecolor;
  final Color style;
  final TextEditingController controller;
  const TextFormfield({super.key,
    required this.hinttext,
    this.style=Colors.black54,
  required this.controller,
    this.hintstylecolor=Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
   border: Border.all(width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 9,left: 10),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color:style ),
          decoration: InputDecoration(
            hintText: hinttext,
            border: InputBorder.none,
           hintStyle: TextStyle(color: hintstylecolor),
          ),
        ),
      ),
    );
  }
}
