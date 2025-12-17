import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../components/setting/setting_container.dart';
import '../../../../components/simple_text.dart';
import 'app_information/app_information.dart';
import 'app_information/password_in_setting/password_in_setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      appBar: AppBar(
        backgroundColor: Appcolors.primarycolor,
        title: SimpleText(text: 'Setting', size: 20,weight: FontWeight.bold, color: Appcolors.white),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: 480,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Appcolors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )
              ),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120,left: 32),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordInSetting()));
                      },
                      child: SettingContainer(text: 'Password',icon: Icons.arrow_forward_ios,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,left: 32),
                  child: SettingContainer(text: 'Touch ID',icon: Icons.arrow_forward_ios,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 32),
                  child: SettingContainer(text: 'Languages',icon: Icons.arrow_forward_ios,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 32),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AppInformation()));
                      },
                      child: SettingContainer(text: 'App information',icon: Icons.arrow_forward_ios,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 32),
                  child: SettingContainer(text: 'Customer care',icon: Icons.arrow_forward_ios,),
                ),
              ],
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 190),
            child: CircleAvatar(backgroundImage: AssetImage('assets/signup/mypiic.jpg'),radius: 55,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 135,left: 200),
            child: SimpleText(text: 'waqas khan', size: 16,weight: FontWeight.bold, color: Appcolors.primarycolor),
          ),

        ],
      ),
    );
  }
}
