import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleText extends StatelessWidget {
  final double size;
  final FontWeight weight;
  final String text;
  final Color color;
  const SimpleText({super.key,required this.text,
    this.size=12,required this.weight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(color: color,fontSize: size,fontWeight: weight));
  }
}
