import 'package:flutter/material.dart';

import '../../../components/forget_custom_wegits/otp_texform_field.dart';
import '../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../components/logintypebutton/otp_resend_button.dart';
import '../../../components/main_text.dart';
import '../../../components/simple_text.dart';
import '../../../utils/constants/primary_color.dart';
import 'change_password_screens/change_password_screen.dart';

class Otp_screen extends StatefulWidget {
  const Otp_screen({super.key});

  @override
  State<Otp_screen> createState() => _Otp_screenState();
}
TextEditingController otp_controller=TextEditingController();
class _Otp_screenState extends State<Otp_screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Container(
              height: 352,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15)
              ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: SimpleText(text: 'Type a code', weight: FontWeight.w600, color: Appcolors.black54,),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: otp_TextFormfield(hinttext: 'Enter OTP', controller: otp_controller,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child:    Otp_resend_button(text: 'Resend', color: Appcolors.primarycolor,),
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: SimpleText(text: 'We texted you a code to verify your ',weight: FontWeight.w600, color: Appcolors.black54,),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(

                      children: [
                      SimpleText(text: 'phone number  ',weight: FontWeight.w600, color: Appcolors.black54,),
                      SimpleText(text: '(+84) 0398829xxx  ', weight: FontWeight.w600, color: Appcolors.primarycolor,)
                    ],),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: SimpleText(text: 'This code will expired 10 minutes after this message.\nIf you dont get a message.', weight: FontWeight.w600, color: Appcolors.black54,),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 100,left: 30),
                          child: InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return ChangePasswordScreen();}));},
                            child: SendCodeCustomBooton(text: 'Change password',
                              color: Appcolors.primarycolor,),
                          )
                      ),
                    ],
                  ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: SimpleText(text: 'Change your phone number', weight: FontWeight.w600, color: Appcolors.primarycolor,),
          ),

        ],
      ) ,
    );
  }
}
