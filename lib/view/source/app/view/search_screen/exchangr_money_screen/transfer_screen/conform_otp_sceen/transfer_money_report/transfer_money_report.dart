import 'package:bankapp/view/utils/constants/primary_color.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../components/simple_text.dart';
class TransferMoneyReport extends StatefulWidget {
  const TransferMoneyReport({super.key});

  @override
  State<TransferMoneyReport> createState() => _TransferMoneyReportState();
}

class _TransferMoneyReportState extends State<TransferMoneyReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      appBar: AppBar(
        backgroundColor: Appcolors.primarycolor,
        title: SimpleText(text: 'Conform', weight: FontWeight.w600, color: Appcolors.white,size: 20,),
      ),
      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                )
              ),
            ),
          )
        ],
      )
    );
  }
}
