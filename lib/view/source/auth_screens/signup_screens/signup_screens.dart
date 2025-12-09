import 'package:bankapp/view/source/auth_screens/signup_screens/signup2.dart';
import 'package:bankapp/view/utils/constants/maincolor.dart';
import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../bottom_navigation_screens/bottom_navigation_bar_screen.dart';
import '../../../components/heading-text.dart';
import '../../../components/logintypebutton/Signuplogin.dart';
import '../../../components/main_text.dart';
import '../../../components/simple_text.dart';
import '../../../components/texformfieldpassword.dart';
import '../../../components/text_formfield.dart';
import '../forgetpassword_screen/forget_password_number_dial_screen.dart';

class SignupScreens extends StatefulWidget {
  const SignupScreens({super.key});

  @override
  State<SignupScreens> createState() => _SignupScreensState();
}
TextEditingController emailcontroller=TextEditingController();
TextEditingController passwordcontroller=TextEditingController();
class _SignupScreensState extends State<SignupScreens> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Appcolors.primarycolor,
        title:    Padding(
          padding: const EdgeInsets.only(top: 10,left: 0),
          child: Row(children: [
            Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MainText(maintext: 'Sign in',),
            ),

          ],),
        ),
      ),
      backgroundColor: Appcolors.primarycolor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Mainwhitecolor.whitecolor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25) )
              ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Heading_text(maintext: 'Welcome Back',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SimpleText(text: 'Hello there, sign in to continue', weight: FontWeight.normal, color: Colors.black54,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80,top: 20),
                    child: Container(
                      height: 120,
                      width: 300,
                      decoration: BoxDecoration(
              
                        image: DecorationImage(image: AssetImage('assets/signup/image.png'))
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40),
                    child: TextFormfield(hinttext: 'Email/phone number', controller:emailcontroller ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 40),
                    child:Texformfieldpassword(hinttext: 'password', controller: passwordcontroller,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 330),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordScreen())
    );
                        },
                        child: SimpleText(text: 'forget password ?', weight: FontWeight.normal, color: Colors.black54,)),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(

                          onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen())
                          );},
                        child: Signuplogin(text: 'Sign in', color: Appcolors.primarycolor,)
                    ),
                  ),
              
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 200,),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/signup/Fingerprint.png',),colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,left: 150),
                    child: Row(children: [
                      SimpleText(text: 'Don''t have an account?', weight: FontWeight.normal, color:Colors.black),
                      InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup2()));},
                          child: SimpleText(text: 'signup',color: Appcolors.primarycolor, weight: FontWeight.bold,))
                    ],),
                  )
              
                ],
              ),
            ),
            ),
          ),

        ],
      ),
    );
  }
}
