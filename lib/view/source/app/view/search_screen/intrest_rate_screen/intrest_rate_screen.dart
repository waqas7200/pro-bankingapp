import 'package:flutter/material.dart';

import '../../../../../../modules/intrest_rate_screen/intrest_rate_screen_model.dart';
import '../../../../../components/simple_text.dart';
import '../../../../../utils/constants/primary_color.dart';
class IntrestRateScreen extends StatefulWidget {
  const IntrestRateScreen({super.key});

  @override
  State<IntrestRateScreen> createState() => _IntrestRateScreenState();
}
List<Intrestmodel> data=[
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Corporate customers', distance: '2m', rate: '5.50%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Corporate customers', distance: '6m', rate: '2.50%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Corporate customers', distance: '8m', rate: '6.50%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Corporate customers', distance: '7m', rate: '6.80%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
  Intrestmodel(text: 'Individual customers', distance: '12m', rate: '5.90%'),
  Intrestmodel(text: 'Individual customers', distance: '1m', rate: '4.50%'),
];
class _IntrestRateScreenState extends State<IntrestRateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(
        appBar: AppBar(
          title: SimpleText(text: 'Interest rate', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
        ),
        body:Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Interest kind'),
              Text('Deposit'),
              Text('Rate'),
            ],),
          ),
               SizedBox(
                 height: 400,
                 width: double.infinity,
                 child: ListView.builder(
                     itemCount: data.length,
                     itemBuilder: (context,index){
                       return Container(
                         height: 35,
                         width: double.infinity,
                         child: ListTile(
                         leading: Text(data[index].text.toString(),style: TextStyle(fontSize:15),),
                         title: Padding(
                           padding: const EdgeInsets.only(left: 80),
                           child: Text(data[index].distance.toString()),
                         ),
                           trailing: Text(data[index].rate.toString()),
                         ),
                       );
                     }),
               )
          ],
        ),
      ),
    );
  }
}
