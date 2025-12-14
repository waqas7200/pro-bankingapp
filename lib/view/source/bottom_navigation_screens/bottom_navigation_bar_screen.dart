import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../app/view/home_screen/Home_screen.dart';
import '../app/view/message_screen/messege_screen.dart';
import '../app/view/search_screen/search_screen.dart';
import '../app/view/setting_screen/setting_screen.dart';
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int index=0;
  final screens=[
    HomeScreen(),
    SearchScreen(),
    MessegeScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolors.primarycolor,
          selectedItemColor: Appcolors.primarycolor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (value){
            index=value;
          setState(() {

          });
          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.mail),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.settings_sharp),label: 'Setting'),
          ]
      ),

    );
  }
}
