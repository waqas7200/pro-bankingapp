import 'package:flutter/material.dart';

import '../../../../../../modules/Exchange_rate/Exchange_rate_screen.dart';
import '../../../../../components/simple_text.dart';
import '../../../../../utils/constants/primary_color.dart';

class ExchangeRateScreen extends StatelessWidget {
  const ExchangeRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleText(text: 'Exchange rate', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Country'),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text('Buy'),
                ),
                Text('Sell'),
              ],),
          ),
          SizedBox(
            height: 480,
            width: 500,
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading:  SizedBox(
                      height: 50,
                      width: 300,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 43,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(data[index].flag.toString()))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SimpleText(text: data[index].countruy.toString(),  weight: FontWeight.w600, color: Appcolors.black),
                          ),
                        ],
                      ),
                    ),

                      title: SimpleText(text: data[index].buy.toString(),  weight: FontWeight.w600, color: Appcolors.black),
                    trailing: SimpleText(text: data[index].sell.toString(), weight: FontWeight.w600, color: Appcolors.black)

                  );
                }),
          )

        ],
      ),
    );
  }
}
List<Exchange_rate>data=[
  Exchange_rate(flag: 'assets/signup/flag_7.png', countruy: 'Vietnam', buy: '1.403', sell: '1.746'),
  Exchange_rate(flag: 'assets/signup/flag_4.png', countruy: 'Nicaragua', buy: '9.123', sell: '12.09'),
  Exchange_rate(flag: 'assets/signup/flag_3.png', countruy: 'Korea', buy: '3.704', sell: '5.151'),
  Exchange_rate(flag: 'assets/signup/flag_6.png', countruy: 'Russia', buy: '116.0', sell: '144.4'),
  Exchange_rate(flag: 'assets/signup/flag_1.png', countruy: 'China', buy: '1.725', sell: '2.234'),
  Exchange_rate(flag: 'assets/signup/flag_5.png', countruy: 'Portuguese', buy: '1.403', sell: '1.746'),
  Exchange_rate(flag: 'assets/signup/flag_3.png', countruy: 'Korea', buy: '3.454', sell: '4.312'),
  Exchange_rate(flag: 'assets/signup/flag_2.png', countruy: 'French', buy: '23.45', sell: '34.56'),
  Exchange_rate(flag: 'assets/signup/flag_4.png', countruy: 'Nicaragua', buy: '263.1', sell: '300.3'),
  Exchange_rate(flag: 'assets/signup/flag_1.png', countruy: 'China', buy: '1.725', sell: '2.234'),

];
