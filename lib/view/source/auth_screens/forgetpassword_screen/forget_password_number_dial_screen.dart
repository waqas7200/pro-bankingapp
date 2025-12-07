import 'package:flutter/material.dart';

import '../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../components/logintypebutton/Signuplogin.dart';
import '../../../components/main_text.dart';
import '../../../components/simple_text.dart';
import '../../../components/text_formfield.dart';
import '../../../utils/constants/primary_color.dart';
import 'opt__screen.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const  ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}
TextEditingController numbercontroller=TextEditingController();
class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        title:    Padding(
          padding: const EdgeInsets.only(top: 10,left: 0),
          child: Row(children: [
            Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MainText(maintext: 'Forgot password',maincolor: Appcolors.black,mainsize: 20,),
            ),

          ],),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
               Padding(
                 padding: const EdgeInsets.only(left: 70,top: 20),
                 child: Container(
                   height: 270,
                   width: 327,
                 decoration: BoxDecoration(
                   color: Colors.grey.shade100,
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,top: 10),
                       child: SimpleText(text: 'Type your phone number ', weight: FontWeight.w600, color: Appcolors.black54,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                       child: TextFormfield(hinttext: '(+84)', controller: numbercontroller,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 30,top: 20),
                       child: SimpleText(text: 'We texted you a code to verify your\nphone number', weight: FontWeight.w600, color: Appcolors.black54,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 70,left: 15),
                       child: InkWell(
                           onTap: (){Navigator.push(context, MaterialPageRoute
                             (builder:(context){return Otp_screen();} ));},
                           child: SendCodeCustomBooton(text: 'Send', color: Appcolors.primarycolor,)),
                     )
                   ],
                 ),
                 ),
               ),

        ]
      ),
    );
  }
}
