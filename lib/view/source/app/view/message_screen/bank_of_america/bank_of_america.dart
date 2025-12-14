import 'package:flutter/material.dart';

import '../../../../../components/exchange_money/transfer_money/transfer_texformfield_2.dart';
import '../../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../../../components/logintypebutton/otp_resend_button.dart';
import '../../../../../components/simple_text.dart';
import '../../../../../components/text_formfield.dart';
import '../../../../../utils/constants/primary_color.dart';
class BankOfAmerica extends StatefulWidget {
  const BankOfAmerica({super.key});

  @override
  State<BankOfAmerica> createState() => _BankOfAmericaState();
}
bool isclicked=false;
TextEditingController messegecontroller=TextEditingController();
class _BankOfAmericaState extends State<BankOfAmerica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SimpleText(text: 'Bank of America', weight: FontWeight.w500, color: Appcolors.black,size: 20,),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.only(top: 10,left:200),
             child: SimpleText(text: '8/10/2025', weight: FontWeight.normal, color: Appcolors.black54),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 10,left:50),
             child:Container(
               height: 100,
               width: 230,
               decoration: BoxDecoration(
                 color: Colors.grey.shade300,
                 borderRadius: BorderRadius.circular(10)
               ),child:   Padding(
               padding: const EdgeInsets.only(top: 10,left:10),
               child: SimpleText(text: 'Did you attempt transaction on\ndebit card ending in 0000 at\nMechan1 in NJ for 100.rs,200?\nReply YES or NO', weight: FontWeight.w600, color: Appcolors.black),
             ) ,
             )
           ),
           Padding(
             padding: const EdgeInsets.only(top: 10,left:300),
             child:Container(
               height: 50,
               width: 50,
               decoration: BoxDecoration(
                 color: Appcolors.primarycolor,
                 borderRadius: BorderRadius.circular(10)
               ),child:   Center(child: SimpleText(text: 'Yes', weight: FontWeight.w600, color: Appcolors.white)) ,
             )
           ),

          Padding(
            padding: const EdgeInsets.only(top: 10,left:200),
            child: SimpleText(text: '18/11/2025', weight: FontWeight.normal, color: Appcolors.black54),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10,left:50),
              child:Container(
                height: 110,
                width: 230,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),child:   Padding(
                padding: const EdgeInsets.only(top: 10,left:10),
                child: SimpleText(text: 'Bank of America : 256486 is\nyour authorization code which\nexpires in 10 minutes. If you\ndidnt request the code.\nCall : 18009898 for assistance', weight: FontWeight.w600, color: Appcolors.black),
              ) ,
              )
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10,left:300),
              child:Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: Appcolors.primarycolor,
                    borderRadius: BorderRadius.circular(10)
                ),child:   Center(child: SimpleText(text: 'Thanks!', weight: FontWeight.w600, color: Appcolors.white)) ,
              )
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 55,left: 10),
                  child:InkWell(
                    onTap: (){
                      if(isclicked==true){
                        isclicked=false;
                        setState(() {

                        });
                      }
                      else
                      {
                        isclicked=true;
                        setState(() {

                        });
                      }
                    },
                    child:Transfer_money_2(hinttext: 'type something..', controller: messegecontroller,)
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55,left: 20),
                child:InkWell(
                  onTap: (){
                    if(isclicked==true){
                      isclicked=false;
                      setState(() {

                      });
                    }
                    else
                      {
                        isclicked=true;
                        setState(() {

                        });
                      }
                  },
                  child: CircleAvatar(
                   backgroundColor:  isclicked==true?Appcolors.primarycolor:Appcolors.grey,
                  radius: 20,child:
                  Center(child:
                  Icon(Icons.arrow_forward,color: isclicked==true?Appcolors.white:Appcolors.black,),),)
                )
              ),


            ],
          ),
        ],
      ) ,
    );
  }
}
