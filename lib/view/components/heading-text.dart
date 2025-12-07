import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading_text extends StatelessWidget {
  final String maintext;
  final FontWeight mainweight;
  final double mainsize;
  const Heading_text({super.key,
    required this.maintext,
    this.mainweight=FontWeight.w600,
    this.mainsize=24,

  });

  @override
  Widget build(BuildContext context) {
    return Text(maintext,style:GoogleFonts.poppins
      (color: Appcolors.heaingcolor,
        fontWeight: mainweight,
        fontSize: mainsize
    ),);;
  }
}

