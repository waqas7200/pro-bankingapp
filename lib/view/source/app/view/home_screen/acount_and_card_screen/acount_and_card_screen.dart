import 'package:bankapp/view/components/simple_text.dart';
import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../../components/home_screen/account_and_card_custon_button_type_container/account_and_card_custom_button_type_container.dart';
class AcountAndCardScreen extends StatefulWidget {
  const AcountAndCardScreen({super.key});

  @override
  State<AcountAndCardScreen> createState() => _AcountAndCardScreenState();
}

class _AcountAndCardScreenState extends State<AcountAndCardScreen> {
  bool iscolor=true;
  bool isbuton=true;
  bool isAccount=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: SimpleText(text: 'Account and Card',size: 20, weight: FontWeight.w600, color: Appcolors.black,),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
        
        
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: iscolor==true?Appcolors.primarycolor :Appcolors.grey1,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(onPressed: (){
                    setState(() {
                      iscolor=true;
                      isAccount=true;
                    });
                  }, child: Text('Acount',style:
                  TextStyle(color: iscolor==true?Appcolors.white :Appcolors.black,fontSize: 18),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: iscolor==true?Appcolors.grey1 :Appcolors.primarycolor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(onPressed: (){
                    setState(() {
                      iscolor=false;
                      isAccount=false;
                    });
                  }, child: Text('Card',style:
                  TextStyle(color: iscolor==true?Appcolors.black :Appcolors.white,fontSize: 18),)),
                ),
              ),
        
            ],),
            SizedBox(
              height: 400,
              child: PageView(
                children: [
                isAccount==true?  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 180,top: 10),
                       child: CircleAvatar(radius: 40,
                         backgroundImage:AssetImage('assets/signup/mypiic.jpg') ,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 180,top: 10),
                       child:SimpleText(text: 'waqas khan', weight: FontWeight.w600, color: Appcolors.primarycolor)
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 30,right: 30,top:10),
                       child: Container(
                         height: 80,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width:1,color: Appcolors.grey1)
                         ),child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left:20,right:20,top:10),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                               SimpleText(text: 'Account 1', weight: FontWeight.w600, color: Appcolors.black),
                               SimpleText(text: '1900 8988 1234', weight: FontWeight.w600, color: Appcolors.black),
                             ],),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:20,right:20),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 SimpleText(text: 'Avalable balance', weight: FontWeight.normal, color: Appcolors.black),
                                 SimpleText(text: '\$20,000', weight: FontWeight.normal, color: Appcolors.primarycolor),
                               ],),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:20,right:20),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 SimpleText(text: 'Branch', weight: FontWeight.normal, color: Appcolors.black),
                                 SimpleText(text: 'New York', weight: FontWeight.normal, color: Appcolors.primarycolor),
                               ],),
                           ),
        
        
                         ],
                       ),
                       ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top:10),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width:1,color: Appcolors.grey1)
                          ),child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20,top:10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Account 2', weight: FontWeight.w600, color: Appcolors.black),
                                  SimpleText(text: '1945 8462 1934', weight: FontWeight.w600, color: Appcolors.black),
                                ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Avalable balance', weight: FontWeight.normal, color: Appcolors.black),
                                  SimpleText(text: '\$15,000', weight: FontWeight.normal, color: Appcolors.primarycolor),
                                ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Branch', weight: FontWeight.normal, color: Appcolors.black),
                                  SimpleText(text: 'New York', weight: FontWeight.normal, color: Appcolors.primarycolor),
                                ],),
                            ),
        
        
                          ],
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top:10),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width:1,color: Appcolors.grey1)
                          ),child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20,top:10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Account 3', weight: FontWeight.w600, color: Appcolors.black),
                                  SimpleText(text: '1400 8385 4204', weight: FontWeight.w600, color: Appcolors.black),
                                ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Avalable balance', weight: FontWeight.normal, color: Appcolors.black),
                                  SimpleText(text: '\$230,000', weight: FontWeight.normal, color: Appcolors.primarycolor),
                                ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20,right:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleText(text: 'Branch', weight: FontWeight.normal, color: Appcolors.black),
                                  SimpleText(text: 'New York', weight: FontWeight.normal, color: Appcolors.primarycolor),
                                ],),
                            ),
        
        
                          ],
                        ),
                        ),
                      )
                    ],
                  )
                    : SingleChildScrollView(
                      child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 30,top: 10),
                          child: Container(
                            height: 250,
                            width: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/message_pics/card1.png'),fit:BoxFit.fitWidth)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 30,top: 0),
                          child: Container(
                            height: 250,
                            width: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/message_pics/card2.png'),fit:BoxFit.fitWidth)
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                          if(isbuton==false){
                            isbuton=true;
                            setState(() {

                            });
                          }
                          else{
                            isbuton==false;
                            setState(() {

                            });
                          }
                          },
                          child: AccountAndCardCustomButtonTypeContainer(text: 'Add card', colortext:isbuton==false?Appcolors.black:Appcolors.white,
                            colorcontainer: isbuton==false?Appcolors.grey1:Appcolors.primarycolor, height:40, width: 150,),
                        )
        
                      ],
                                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}
