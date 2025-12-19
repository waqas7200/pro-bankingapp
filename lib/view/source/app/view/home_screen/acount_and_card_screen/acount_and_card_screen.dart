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
  bool iscolor=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: SimpleText(text: 'Account and Card',size: 20, weight: FontWeight.w600, color: Appcolors.black,),
      ),
      body:Row(children: [

        InkWell(
          child:
         iscolor==true? AccountAndCardCustomButtonTypeContainer(text: 'Account', colortext: iscolor==true?Appcolors.white:Appcolors.black,
            colorcontainer: iscolor==true?Appcolors.primarycolor:Appcolors.grey1, height: 30, width: 150,)
          :AccountAndCardCustomButtonTypeContainer(text: 'Account', colortext: iscolor==true?Appcolors.white:Appcolors.black,
            colorcontainer: iscolor==true?Appcolors.primarycolor:Appcolors.grey1, height: 30, width: 150,),


        )



      ],)

    );
  }
}
