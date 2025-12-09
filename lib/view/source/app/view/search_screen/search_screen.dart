
import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../components/simple_text.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Search', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 40,right: 50),
            child: Container(
              height: 60,
              width: 350,
              color: Appcolors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      SimpleText(text: 'Branch', weight: FontWeight.w600, color: Appcolors.black,),
                      SimpleText(text: 'Search for branch', weight: FontWeight.w600, color: Appcolors.black54,),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 140),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/signup/first.png'))
                    ),
                  ),
                )
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 40,right: 50),
            child: Container(
              height: 60,
              width: 350,
              color: Appcolors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      SimpleText(text: 'Interest rate', weight: FontWeight.w600, color: Appcolors.black,),
                      SimpleText(text: 'Search for interest rate', weight: FontWeight.w600, color: Appcolors.black54,),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 110),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/signup/2nd.png'))
                    ),
                  ),
                )
              ],),
            ),
          ),

        ],
      ),
    );
  }
}
