import 'package:bankapp/modules/grid_view_home_screen/grid_view_home_screen.dart';
import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../components/simple_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Homemodel>data=[
    Homemodel(image: 'assets/signup/Category.png'),
    Homemodel(image: 'assets/signup/Category(1).png'),
    Homemodel(image: 'assets/signup/Category(2).png'),
    Homemodel(image: 'assets/signup/Category(3).png'),
    Homemodel(image: 'assets/signup/Category(4).png'),
    Homemodel(image: 'assets/signup/Category(5).png'),
    Homemodel(image: 'assets/signup/Category(6).png'),
    Homemodel(image: 'assets/signup/Category(7).png'),
    Homemodel(image: 'assets/signup/Category(8).png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      body: Stack(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: CircleAvatar(backgroundImage: AssetImage('assets/signup/mypiic.jpg'),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SimpleText(text: 'hi,waqas khan', weight: FontWeight.w500, color: Appcolors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Icon(Icons.notifications,color: Appcolors.white,),
              )
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 67),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Appcolors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110,left: 50,right: 50),
            child: SizedBox(
              height: 350,
              width: double.infinity,
              child: GridView.builder(
                itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3), itemBuilder: (context,index){
                    return Container(
                      height: 20,
                      width: 30,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(data[index].image.toString()))),
                    );
              }),
            ),
          )
        ],
      ),
    );
  }
}
