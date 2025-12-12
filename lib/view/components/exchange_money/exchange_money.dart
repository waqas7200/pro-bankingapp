import 'package:flutter/material.dart';
class ExchangeMoney extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Color hintcolor;
  final String suffixtext;
  const ExchangeMoney({super.key,
    required this.hinttext,
    this.hintcolor=Colors.black54,
  required this.suffixtext,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 15),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color: hintcolor,),
            border: InputBorder.none,
            suffixText: suffixtext,
            suffixStyle: TextStyle(color:Colors.black54),
            suffixIcon: Icon(Icons.swap_vert)
          ),
        ),
      ),
    );
  }
}



