import 'package:bankapp/view/utils/constants/style_color.dart';
import 'package:flutter/material.dart';

class otp_TextFormfield extends StatelessWidget {
  final String hinttext;
  final Color hintstylecolor;
  final Color style;
  final TextEditingController controller;
  const otp_TextFormfield({super.key,
    required this.hinttext,
    this.style=Colors.black54,
    required this.controller,
    this.hintstylecolor=Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 9,),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 4),
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
      ),
    );
  }
}


