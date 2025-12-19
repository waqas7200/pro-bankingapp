import 'package:flutter/material.dart';
class AccountAndCardCustomButtonTypeContainer extends StatelessWidget {
 final String text;
 final double height;
 final double width;
 final Color colortext;
 final Color colorcontainer;
  const AccountAndCardCustomButtonTypeContainer({super.key,
    required this.text,
  required this.colortext,
  required this.colorcontainer,
    required this.height,
    required this.width, required,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
      color:colorcontainer ,
        borderRadius: BorderRadius.circular(20)
      ),child: Center(child: Text(text,style: TextStyle(color: colortext),),),
    );
  }
}
