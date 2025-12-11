import 'package:flutter/material.dart';
class ExchangeMoneyScreen extends StatefulWidget {
  const ExchangeMoneyScreen({super.key});

  @override
  State<ExchangeMoneyScreen> createState() => _ExchangeMoneyScreenState();
}

class _ExchangeMoneyScreenState extends State<ExchangeMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/signup/exchange_money.png'))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250,left: 35),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(13),
                border: Border.all(width: 0.1)
              ),
            ),
          )
        ],
      ),
    );
  }
}
