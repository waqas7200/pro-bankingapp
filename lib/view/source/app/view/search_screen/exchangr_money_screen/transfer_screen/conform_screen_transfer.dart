import 'package:flutter/material.dart';

import '../../../../../../components/forget_custom_wegits/send_code_custom_booton.dart';
import '../../../../../../components/logintypebutton/otp_resend_button.dart';
import '../../../../../../components/simple_text.dart';
import '../../../../../../components/text_formfield.dart';
import '../../../../../../utils/constants/primary_color.dart';
class ConformScreenTransfer extends StatefulWidget {
  const ConformScreenTransfer({super.key});

  @override
  State<ConformScreenTransfer> createState() => _ConformScreenTransferState();
}
TextEditingController cardnumbercontroller=TextEditingController();
TextEditingController tocontroller=TextEditingController();
TextEditingController usbankcontroller=TextEditingController();
TextEditingController phonecontroller=TextEditingController();
TextEditingController dollercontroller=TextEditingController();
TextEditingController jimycontroller=TextEditingController();
TextEditingController doller2controller=TextEditingController();
class _ConformScreenTransferState extends State<ConformScreenTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Conform', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child: SimpleText(text: 'Confirm transaction information', weight: FontWeight.w600, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:  SimpleText(text: 'From', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:  TextFormfield(hinttext: '**** **** 6789', controller: cardnumbercontroller,)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   SimpleText(text: 'To', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   TextFormfield(hinttext: 'Name', controller: tocontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   SimpleText(text: 'Beneficiary bank', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   TextFormfield(hinttext: 'bank', controller: usbankcontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   SimpleText(text: 'Card number', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:  TextFormfield(hinttext: 'card number', controller: phonecontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:   SimpleText(text: 'Transaction fee', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:    TextFormfield(hinttext: 'trasaction fee', controller: dollercontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:     SimpleText(text: 'Note', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:      TextFormfield(hinttext: 'person', controller: jimycontroller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:SimpleText(text: 'Amount', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:TextFormfield(hinttext: 'amount', controller: doller2controller,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20),
              child:SimpleText(text: 'Get OTP to verify transaction', weight: FontWeight.normal, color: Appcolors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child:SendCodeCustomBooton(text: 'OTP', color:Appcolors.primarycolor ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child:Otp_resend_button(text: 'Get OTP', color: Appcolors.primarycolor,),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
