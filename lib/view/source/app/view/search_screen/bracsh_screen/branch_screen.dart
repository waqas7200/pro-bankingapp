import 'package:flutter/material.dart';

import '../../../../../../modules/search_branch_screen/branch_screen.dart';
import '../../../../../components/simple_text.dart';
import '../../../../../components/text_formfield.dart';
import '../../../../../utils/constants/primary_color.dart';
class BranchScreen extends StatefulWidget {
   BranchScreen({super.key});

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}
TextEditingController bankcontroller=TextEditingController();
class _BranchScreenState extends State<BranchScreen> {
  List<Branchmodel>data2=[
    Branchmodel(img: 'assets/signup/Address.png', text1: 'Bank 1656 Union Street', distance: '50 m', ),
    Branchmodel(img: 'assets/signup/Address.png', text1: 'Bank Secaucus', distance: '1,2 km'),
    Branchmodel(img: 'assets/signup/Address.png', text1: 'Bank 1657 Riverside Drive', distance: '5,3 km'),
    Branchmodel(img: 'assets/signup/Address.png', text1: 'Bank Rutherford', distance: '70m'),
    Branchmodel(img: 'assets/signup/Address.png', text1: 'Bank 1656 Union Street', distance: '30m'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.grey,
      appBar: AppBar(
        title: SimpleText(text: 'Branch', weight: FontWeight.w600, color: Appcolors.black,size: 20,),
      ),
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/signup/Map.png'),fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:200),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Appcolors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(children: [

                    Padding(
                        padding: const EdgeInsets.only(top: 10,left: 50),
                        child: TextFormfield(hinttext: 'search banks', controller:bankcontroller ,)
                    )
                  ],),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 300,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context,index){

                            return ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(data2[index].img.toString()))
                                  ),
                                ),
                              ),
                              title: Text(data2[index].text1.toString()),
                              trailing: Text(data2[index].distance.toString()),
                            );
                          }),
                    ),
                  ),
                ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
