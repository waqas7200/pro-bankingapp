import 'package:flutter/material.dart';
class SettingContainer extends StatelessWidget {
  final String text;
  final String text2;
  final Color color;
  const SettingContainer({super.key,required this.text , required this.text2,this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.05)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(text),
            Spacer(),
            Text(text2,style: TextStyle(color: color),),
          ],
        ),
      ),
    );
  }
}
