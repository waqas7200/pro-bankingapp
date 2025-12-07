import 'package:bankapp/view/source/auth_screens/signup_screens/signup_screens.dart';
import 'package:flutter/material.dart';

import '../../../components/heading-text.dart';
import '../../../components/logintypebutton/Signuplogin.dart';
import '../../../components/main_text.dart';
import '../../../components/simple_text.dart';
import '../../../components/texformfieldpassword.dart';
import '../../../components/text_formfield.dart';
import '../../../utils/constants/primary_color.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}
TextEditingController fullnamecontroller=TextEditingController();
TextEditingController emailcontroller=TextEditingController();
TextEditingController passwordcontroller=TextEditingController();
class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      appBar: AppBar(
        backgroundColor: Appcolors.primarycolor,
        title:    Padding(
          padding: const EdgeInsets.only(top: 10,left: 0),
          child: Row(children: [
            //
            // Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: MainText(maintext: 'Sign up',),
            ),

          ],),
        ),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Appcolors.stackcontainercolor,
            borderRadius: 
              BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3,left: 20),
              child: Heading_text(maintext: 'Welcome to us,',),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 20),
              child: SimpleText(text: 'Hello there, create New account', weight: FontWeight.normal, color: Colors.black,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,top: 0,bottom: 10),
              child: Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration(


                      image: DecorationImage(image: AssetImage('assets/signup/imagesignup2.png'))
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: TextFormfield(hinttext: 'full name', controller: fullnamecontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15),
              child: TextFormfield(hinttext: 'Email /phone', controller: emailcontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15),
              child: Texformfieldpassword(hinttext: 'password', controller: passwordcontroller,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 13),
              child:  Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SimpleText(text: '  By creating an account your agree', weight: FontWeight.w600, color: Colors.black54,size: 12,),
                      Row(
                        children: [
                          SimpleText(text: '  to our', weight: FontWeight.w600, color: Colors.black54,size: 12,),
                          SimpleText(text: '  Term and Condtions', weight: FontWeight.w800, color: Appcolors.primarycolor,size: 12,),
                        ],
                      ),
                    ],
                  ),
                ],
              )

            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,top: 40),
                child:  Signuplogin(text: 'sign up', color: Appcolors.primarycolor,)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 150),
              child: Row(children: [
                SimpleText(text: 'Have an account? ', weight: FontWeight.normal, color:Colors.black),
                InkWell(
                    onTap: (){},
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreens()));
                        },
                        child: SimpleText(text: 'sign in',color: Appcolors.primarycolor, weight: FontWeight.bold,)))
              ],),
            )

          ],
        ),
        ),
      ],),
    );
  }
}
