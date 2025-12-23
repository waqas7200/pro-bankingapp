import 'package:bankapp/view/components/simple_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../../modules/grid_view_home_screen/account_and_card_model/card_model_class.dart';
import '../../../../../../utils/constants/primary_color.dart';
class CardScren extends StatelessWidget {
   CardScren({super.key});
List<Card_model>data=[
  Card_model(text1: 'Name', text2: 'Waqas khan'),
  Card_model(text1: 'Card number', text2: '**** **** 9018'),
  Card_model(text1: 'Valid from', text2: '10/15'),
  Card_model(text1: 'Good thru', text2: '10/20'),
  Card_model(text1: 'Available balance', text2: '\$10,000'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Card', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body:Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount:data.length ,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimpleText(text: data[index].text1.toString(), weight: FontWeight.normal, color: Appcolors.black),
                    SimpleText(text: data[index].text2.toString(), weight: FontWeight.bold, color: Appcolors.primarycolor),
                  ],),
              );
            }),
          ),
          Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: SimpleText(text: 'Delet', weight: FontWeight.normal, color: Colors.redAccent,size: 20,)))
        ],
      )
    );
  }
}
