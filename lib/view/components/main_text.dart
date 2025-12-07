import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainText extends StatelessWidget {
  final String maintext;
  final Color maincolor;
  final FontWeight mainweight;
  final double mainsize;
  const MainText({
    super.key,required this.maintext,
    this.maincolor=Colors.white,
   this.mainweight=FontWeight.w600,
    this.mainsize=20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(maintext,style: GoogleFonts.poppins
    (color: maincolor,
        fontWeight: mainweight,
        fontSize: mainsize
    ),);
  }
}
