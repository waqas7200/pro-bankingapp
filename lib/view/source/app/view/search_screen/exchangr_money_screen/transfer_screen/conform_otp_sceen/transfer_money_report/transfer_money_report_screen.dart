import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../components/simple_text.dart';
class TransferMoneyReportScreen extends StatefulWidget {
  const TransferMoneyReportScreen({super.key});

  @override
  State<TransferMoneyReportScreen> createState() => _TransferMoneyReportScreenState();
}

class _TransferMoneyReportScreenState extends State<TransferMoneyReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primarycolor,
        title: SimpleText(text: 'Transaction report', weight: FontWeight.w600, color: Appcolors.white,size: 20,),
      ),
      backgroundColor: Appcolors.primarycolor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Container(
              height: 500,
              width: double.infinity,
             decoration: BoxDecoration(
               color: Appcolors.white,
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(30),
                 topLeft: Radius.circular(30),
                 
               ),

             ),child: SingleChildScrollView(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:100,left: 50,right: 0),
                    child: Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
               
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
               
                          ),
                          image: DecorationImage(image: AssetImage('assets/message_pics/Chart.png'),fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: SimpleText(text: 'Today', weight: FontWeight.w500, color: Appcolors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 0,top: 0),
                          child: Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/message_pics/waterdroop.png'),fit: BoxFit.cover)
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SimpleText(text: 'Water Bill', weight: FontWeight.bold, color: Appcolors.black),
                            SimpleText(text: 'Unsuccessfully', weight: FontWeight.w500, color: Appcolors.black),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100,top:17),
                        child: SimpleText(text: '-\$280', weight: FontWeight.w500, color: Colors.red),
                      ),
               
                    ],
                                      ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: SimpleText(text: 'Yesterday', weight: FontWeight.w500, color: Appcolors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 0,top: 0),
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/message_pics/incon_salery.png'),fit: BoxFit.cover)
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleText(text: 'Income: Salary Oct', weight: FontWeight.bold, color: Appcolors.black),
               
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55,top:17),
                          child: SimpleText(text: '+S1200', weight: FontWeight.w500, color: Colors.red),
                        ),
               
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 0,top: 0),
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/message_pics/electric_bill.png'),fit: BoxFit.cover)
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleText(text: 'Electric Bill', weight: FontWeight.bold, color: Appcolors.black),
                              SimpleText(text: 'Successfully', weight: FontWeight.bold, color: Appcolors.black),

                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100,top:17),
                          child: SimpleText(text: '-\S1200', weight: FontWeight.w500, color: Colors.red),
                        ),

                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 0,top: 0),
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/message_pics/income_icon.png'),fit: BoxFit.cover)
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleText(text: 'Income : Jane transfers', weight: FontWeight.bold, color: Appcolors.black),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top:17),
                          child: SimpleText(text: '+\$500', weight: FontWeight.w500, color: Colors.red),
                        ),

                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 0,top: 0),
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/message_pics/internet_icon.png'),fit: BoxFit.cover)
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleText(text: 'InterNet Bill', weight: FontWeight.bold, color: Appcolors.black),
                              SimpleText(text: 'Successfully', weight: FontWeight.bold, color: Appcolors.black),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100,top:17),
                          child: SimpleText(text: '- \$100', weight: FontWeight.w500, color: Colors.red),
                        ),

                      ],
                    ),
                  ),
                  Divider(),
                ],
                           ),
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0,left: 100),
            child: Container(
              height: 150,
              width: 250,
             decoration: BoxDecoration(

                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(30),
                   topLeft: Radius.circular(30),

                 ),
               image: DecorationImage(image: AssetImage('assets/message_pics/card1.png'),fit: BoxFit.fill)
             ),
            ),
          ),


        ],
      ),
    );
  }
}
