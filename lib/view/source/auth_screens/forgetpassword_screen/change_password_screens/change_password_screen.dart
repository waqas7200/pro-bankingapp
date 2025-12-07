import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../../components/main_text.dart';
import '../../../../components/simple_text.dart';
import '../../../../components/texformfieldpassword.dart';
import 'change_sucessfuly_password_screen.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();

}
TextEditingController password=TextEditingController();
class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        title:    Padding(
          padding: const EdgeInsets.only(top: 10,left: 0),
          child: Row(children: [
            //Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MainText(maintext: 'Change password',maincolor: Appcolors.black,mainsize: 20,),
            ),

          ],),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 10),
            child: Container(
              height: 280,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SimpleText(text: 'Type your new password', weight: FontWeight.w600, color: Appcolors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Texformfieldpassword(hinttext: 'New password', icon: Icons.visibility,controller: password,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: SimpleText(text: 'conform password', weight: FontWeight.w600, color: Appcolors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 5),
                    child: Texformfieldpassword(hinttext: 'conform password', icon: Icons.visibility,controller: password,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43,right: 30,top: 60),
                    child:  InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>ChangeSucessfulyPasswordScreen()));
                        },
                        child: SendCodeCustomBooton(text: 'Change password' ,color: Appcolors.primarycolor,))
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
