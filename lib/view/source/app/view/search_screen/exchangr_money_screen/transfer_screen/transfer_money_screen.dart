import 'package:flutter/material.dart';

import '../../../../../../components/exchange_money/exchange_money.dart';
import '../../../../../../components/exchange_money/transfer_money/transfer_money_custom_textformfield.dart';
import '../../../../../../components/exchange_money/transfer_money/transfer_texformfield_2.dart';
import '../../../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../../../../components/simple_text.dart';
import '../../../../../../components/text_formfield.dart';
import '../../../../../../utils/constants/primary_color.dart';
import 'conform_otp_sceen/conform_screen_transfer.dart';
class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}
TextEditingController transfercontroller=TextEditingController();
TextEditingController namecontroller=TextEditingController();
TextEditingController cardcontaner=TextEditingController();
TextEditingController amountcontroller=TextEditingController();
TextEditingController contentcontroller=TextEditingController();
class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  bool isclicked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Transfer', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 0),
              child: Transfer_money(hinttext: 'Choose account / card', controller: transfercontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 0),
              child: SimpleText(text: 'Available balance : 10,000.Rs', weight: FontWeight.w600, color: Appcolors.primarycolor)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20),
              child: SimpleText(text: 'Choose transaction', weight: FontWeight.w600, color: Appcolors.black)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 0,bottom: 5),
                    child: Container(
                      height: 100,
                      width: 100,
                     decoration: BoxDecoration(
                       color:Appcolors.grey,
                       //color: isclicked?Appcolors.primarycolor:Colors.grey.shade400,
                       borderRadius: BorderRadius.circular(10),
        
                     ),child: Padding(
                       padding: const EdgeInsets.only(left: 12,top: 10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                          width: 30,
                            decoration: BoxDecoration(
        
                              image: DecorationImage(image: AssetImage('assets/signup/transfer_1.png'),fit:BoxFit.cover)
                            ),
                          ),
                        SimpleText(text: 'Transfer via\ncard number', weight: FontWeight.w600, color: Appcolors.black)
        
                        ],
                                         ),
                     ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 0,bottom: 5),
                    child: InkWell(
                      onTap: (){
                        if(isclicked==true){
                          isclicked=false;
                          setState(() {

                          });
                        }
                        else{
                          isclicked=true;
                          setState(() {

                          });
                        }
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                       decoration: BoxDecoration(
                         color: isclicked==true?Appcolors.primarycolor:Colors.grey.shade400,
                         borderRadius: BorderRadius.circular(10),

                       ),child: Padding(
                         padding: const EdgeInsets.only(left: 12,top: 10),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                            width: 30,
                              decoration: BoxDecoration(

                                image: DecorationImage(image: AssetImage('assets/signup/transfer_2.png'),fit:BoxFit.cover)
                              ),
                            ),
                          SimpleText(text: 'Transfer to\nthe same bank', weight: FontWeight.w600, color: isclicked==true?Appcolors.white:Appcolors.black)

                          ],
                                           ),
                       ),
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 0,bottom: 5),
                    child: Container(
                      height: 100,
                      width: 100,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(10),
        
                     ),child: Padding(
                       padding: const EdgeInsets.only(left: 12,top: 10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                          width: 30,
                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage('assets/signup/transfer_3.png'),fit:BoxFit.cover)
                            ),
                          ),
                        SimpleText(text: 'Transfer to\nanother bank', weight: FontWeight.w600, color: Appcolors.black)
        
                        ],
                                         ),
                     ),
                    )
                  ),
                ],
              ),
              
            ),
           Padding(
             padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               SimpleText(text: 'Choose beneficiary', weight: FontWeight.normal, color: Appcolors.grey),
               SimpleText(text: 'Find beneficiary', weight: FontWeight.w600, color: Appcolors.primarycolor),
             ],),
        
           ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color:Appcolors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),child: Center(child: CircleAvatar(child: Icon(Icons.add,size: 40),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                              color:Appcolors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CircleAvatar(backgroundImage: AssetImage('assets/signup/pintrestimg.jpeg'),radius: 20,),
                            SimpleText(text: 'Emma', weight: FontWeight.w600, color: Appcolors.black)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                      color: Appcolors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Center(child: CircleAvatar(backgroundImage: AssetImage('assets/signup/mypiic.jpg'),radius: 20,)),
                            SimpleText(text: 'Justin', weight: FontWeight.w600, color: Appcolors.black)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      height: 90,
                      width: 120,
                      decoration: BoxDecoration(
                        color:Appcolors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('assets/signup/pintrestimg.jpeg'),radius: 20,),
                          SimpleText(text: 'Emma', weight: FontWeight.w600, color: Appcolors.black)
                        ],
                      ),
                    ),
                    ),
                  ),
        
        
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 50),
              child: Container(
                height: 300,
                width: 420,
               decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(width: 0.2)
               ),child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Transfer_money_2(hinttext: 'Name', controller: namecontroller,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Transfer_money_2(hinttext: 'Card number', controller:cardcontaner ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:  Transfer_money_2(hinttext: 'Amount', controller: amountcontroller,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:    Transfer_money_2(hinttext: 'Content', controller: contentcontroller,),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35,top: 10),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width:0.2)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: SimpleText(text: 'Save to directory of beneficiary ', weight: FontWeight.normal, color: Appcolors.black),
                  )
                ],),
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (contex)=>ConformScreenTransfer()));
                      },
                      child: SendCodeCustomBooton(text: 'Confirm', color: Appcolors.primarycolor,)),
                )
              ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
