import 'package:bankapp/view/components/simple_text.dart';
import 'package:bankapp/view/source/app/view/search_screen/exchangr_money_screen/transfer_screen/transfer_money_screen.dart';
import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../../components/exchange_money/exchange_money.dart';
import '../../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
class ExchangeMoneyScreen extends StatefulWidget {
  const ExchangeMoneyScreen({super.key});

  @override
  State<ExchangeMoneyScreen> createState() => _ExchangeMoneyScreenState();
}
TextEditingController exchangecontroller=TextEditingController();
TextEditingController exchangecontroller2=TextEditingController();
class _ExchangeMoneyScreenState extends State<ExchangeMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Appcolors.white,
                image: DecorationImage(image: AssetImage('assets/signup/exchange_money.png'),fit: BoxFit.fill)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 35),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
               color: Appcolors.white,
                borderRadius: BorderRadius.circular(13),
                
                border: Border.all(width: 0.1)
              ),child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ExchangeMoney(hinttext: 'Amount', suffixtext: 'USD', controller: exchangecontroller2,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Appcolors.white,
                      image: DecorationImage(image: AssetImage('assets/signup/Arrow.png'),)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: ExchangeMoney(hinttext: 'To', suffixtext: 'USD', controller: exchangecontroller,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 30,right: 20),
                child: Row(
                  children: [
                    SimpleText(text: 'Currency rate', weight: FontWeight.w600, color: Appcolors.primarycolor),
                    SizedBox(width: 130,),
                    SimpleText(text: '1 USD = 1122 KRW', weight: FontWeight.w600, color: Appcolors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>TransferMoneyScreen()));
                    },
                    child: SendCodeCustomBooton(text: 'Exchange', color:Appcolors.primarycolor,)),
              )
            ],),
            ),
          )
        ],
      ),
    );
  }
}
