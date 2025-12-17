import 'package:flutter/material.dart';

import '../../../../../components/setting/app_information_custom_container/app_information_custom_container.dart';
import '../../../../../components/simple_text.dart';
import '../../../../../utils/constants/primary_color.dart';
class AppInformation extends StatefulWidget {
  const AppInformation({super.key});

  @override
  State<AppInformation> createState() => _AppInformationState();
}

class _AppInformationState extends State<AppInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: SimpleText(text: 'App information', size: 20,weight: FontWeight.bold, color: Appcolors.black),
        ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 60),
            child: SimpleText(text: 'CaBank E-mobile Banking', size: 20,weight: FontWeight.bold, color: Appcolors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: SettingContainer(text: 'Date of manufacture',text2: 'Dec 2019',color: Appcolors.primarycolor,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: SettingContainer(text: 'Version',text2: '9.0.2',color: Appcolors.primarycolor,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30),
            child: SettingContainer(text: 'Language',text2: 'English',color: Appcolors.primarycolor,),
          ),
        ],
      )
    );
  }
}
