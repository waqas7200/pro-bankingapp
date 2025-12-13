import 'package:flutter/material.dart';

import '../../../../components/simple_text.dart';
import '../../../../utils/constants/primary_color.dart';
class MessegeScreen extends StatefulWidget {
  const MessegeScreen({super.key});

  @override
  State<MessegeScreen> createState() => _MessegeScreenState();
}

class _MessegeScreenState extends State<MessegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Message', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.only(top: 10,left: 30),
          child: Container(
            height: 70,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 0.1)
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 50,
                 decoration: BoxDecoration(
                   color: Appcolors.primarycolor,
                   image: DecorationImage(image: AssetImage('assets/message_pics/1.png')),
                   borderRadius: BorderRadius.circular(15)
                 ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: SimpleText(text: 'Bank of America', weight: FontWeight.w600, color: Appcolors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: SimpleText(text: 'Bank of America : 256486 is the au...', weight: FontWeight.normal, color: Appcolors.black54),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 6,bottom: 10),
                child: SimpleText(text: 'Today', weight: FontWeight.normal, color: Appcolors.black54),
              ),
            ],),
          ),
        ),
          Padding(
          padding: const EdgeInsets.only(top: 10,left: 30),
          child: Container(
            height: 70,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 0.1)
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 50,
                 decoration: BoxDecoration(
                   color: Colors.redAccent,
                   image: DecorationImage(image: AssetImage('assets/message_pics/2.png')),
                   borderRadius: BorderRadius.circular(15)
                 ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: SimpleText(text: 'Account', weight: FontWeight.w600, color: Appcolors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10),
                  child: SimpleText(text: 'Your account is limited. Please foll...', weight: FontWeight.normal, color: Appcolors.black54),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 6,bottom: 10),
                child: SimpleText(text: '12/10', weight: FontWeight.normal, color: Appcolors.black54),
              ),
            ],),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30),
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: AssetImage('assets/message_pics/3.png')),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: SimpleText(text: 'Alert', weight: FontWeight.w600, color: Appcolors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 10),
                      child: SimpleText(text: 'Your statement is ready for you to...', weight: FontWeight.normal, color: Appcolors.black54),
                    ),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(left: 6,bottom: 10),
                  child: SimpleText(text: '11/10', weight: FontWeight.normal, color: Appcolors.black54),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30),
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(image: AssetImage('assets/message_pics/4.png')),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: SimpleText(text: 'Paypal', weight: FontWeight.w600, color: Appcolors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 10),
                      child: SimpleText(text: 'Your account has been locked. Ple...', weight: FontWeight.normal, color: Appcolors.black54),
                    ),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(left: 6,bottom: 10),
                  child: SimpleText(text: '10/11', weight: FontWeight.normal, color: Appcolors.black54),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 30),
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        image: DecorationImage(image: AssetImage('assets/message_pics/5.png')),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: SimpleText(text: 'Withdraw', weight: FontWeight.w600, color: Appcolors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,left: 10),
                      child: SimpleText(text: 'Dear customer, 2987456 is your co...', weight: FontWeight.normal, color: Appcolors.black54),
                    ),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(left: 6,bottom: 10),
                  child: SimpleText(text: '10/12', weight: FontWeight.normal, color: Appcolors.black54),
                ),
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
