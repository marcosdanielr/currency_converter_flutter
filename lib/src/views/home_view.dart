import 'package:currency_converter/src/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 20),
        child: Column(children: [
          Image.asset('assets/images/logo.png', width: 150, height: 150),
          SizedBox(height: 50),
          CurrencyBox(),
          SizedBox(height: 10),
          CurrencyBox(),
          SizedBox(height: 50),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {},
              child: Text('Convert'))
        ]),
      ),
    ));
  }
}
