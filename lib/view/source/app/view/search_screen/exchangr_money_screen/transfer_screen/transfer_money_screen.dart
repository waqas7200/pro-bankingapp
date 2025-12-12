import 'package:flutter/material.dart';

import '../../../../../../components/exchange_money/exchange_money.dart';
import '../../../../../../components/exchange_money/transfer_money/transfer_money_custom_textformfield.dart';
import '../../../../../../components/simple_text.dart';
import '../../../../../../utils/constants/primary_color.dart';
class TransferMoneyScreen extends StatefulWidget {
  const TransferMoneyScreen({super.key});

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}
TextEditingController transfercontroller=TextEditingController();
class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  bool isclicked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Transfer', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: Column(
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
                  padding: const EdgeInsets.only(left: 30,top: 0),
                  child: Container(
                    height: 100,
                    width: 100,
                   decoration: BoxDecoration(
                     color: isclicked?Appcolors.primarycolor:Colors.grey.shade400,
                     borderRadius: BorderRadius.circular(10),

                   ),child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 40,top: 0),
                          child:Container(
                            height: 30,
                          width: 30,
                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage('assets/signup/transfer_1.png'),fit:BoxFit.cover)
                            ),
                          )
                      ),
                      SimpleText(text: '', weight: weight, color: color),
                      SimpleText(text: text, weight: weight, color: color),
                    ],
                  ),
                  )
                ),
              ],
            )
          ),

        ],
      ),
    );
  }
}
