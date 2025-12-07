import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../../components/simple_text.dart';
class ChangeSucessfulyPasswordScreen extends StatefulWidget {
  const ChangeSucessfulyPasswordScreen({super.key});

  @override
  State<ChangeSucessfulyPasswordScreen> createState() => _ChangeSucessfulyPasswordScreenState();
}

class _ChangeSucessfulyPasswordScreenState extends State<ChangeSucessfulyPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/signup/change_password.png'))
            ),
          ),
          SimpleText(text: 'Change password successfully!', weight: FontWeight.w600, color: Appcolors.primarycolor,),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SimpleText(text: 'You have successfully change password.\nPlease use the new password when Sign in.!', weight: FontWeight.w600, color: Appcolors.black54,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SendCodeCustomBooton(text: 'Ok', color: Appcolors.primarycolor,),
          )
        ],
      ),
    );
  }
}
