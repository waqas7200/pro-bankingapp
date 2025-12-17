import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../../../components/exchange_money/exchange_money.dart';
import '../../../../../../components/exchange_money/transfer_money/transfer_texformfield_2.dart';
import '../../../../../../components/logintypebutton/Signuplogin.dart';
import '../../../../../../components/setting/setting_password_button_type.dart';
import '../../../../../../components/simple_text.dart';
import '../../../../../../components/texformfieldpassword.dart';
class PasswordInSetting extends StatefulWidget {
  const PasswordInSetting({super.key});

  @override
  State<PasswordInSetting> createState() => _PasswordInSettingState();
}
TextEditingController recentcontroller=TextEditingController();
TextEditingController newcontroller=TextEditingController();
class _PasswordInSettingState extends State<PasswordInSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 50),
            child: Container(
              height: 450,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0.05)
              ),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 30),
                  child: SimpleText(text: 'Recent password', weight: FontWeight.normal, color: Appcolors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Transfer_money_2(hinttext: 'Recent password', controller: recentcontroller,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 20),
                  child:   SimpleText(text: 'New password', weight: FontWeight.normal, color: Appcolors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Transfer_money_2(hinttext: 'New password', controller: recentcontroller,),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 30,top: 20),
                  child:   SimpleText(text: 'Confirm password', weight: FontWeight.normal, color: Appcolors.black54,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Transfer_money_2(hinttext: 'Confirm password', controller: recentcontroller,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 60),
                  child:  Settin_passsword(text: 'Change password', color: Appcolors.primarycolor,)
                ),
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}
