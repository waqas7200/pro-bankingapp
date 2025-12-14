
import 'package:flutter/material.dart';
class Transfer_money_2 extends StatelessWidget {
  final String hinttext;
  final Color hintcolor;
  final TextEditingController controller;
  const Transfer_money_2({super.key,
    required this.hinttext,
    this.hintcolor=Colors.black54,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        color:Colors.white,
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

          ),
        ),
      ),
    );
  }
}



