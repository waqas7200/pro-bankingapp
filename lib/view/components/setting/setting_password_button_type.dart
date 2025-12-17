import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../source/auth_screens/forgetpassword_screen/opt__screen.dart';

class Settin_passsword extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final Color textcolor;
  const Settin_passsword({super.key,required this.text,required this.color,this.fontWeight=FontWeight.w600,this.fontsize=16,this.textcolor=Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:35 ,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.3),
        color: color,
      ),
      child: Center(child: Text(text,style:GoogleFonts.poppins(color: textcolor,fontWeight: fontWeight,fontSize: fontsize),)),
    );
  }
}
