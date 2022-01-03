import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/two_page.dart';
import 'package:navegacao/widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);
  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: valorAleatorio,
                builder: (_, value, __) => Text('O valor é: $value')),
            SizedBox(height: 10),
            CustomButtonWidget(
              onPressed: () {
                random();
                /* Navigator.of(context)
                    .pushReplacementNamed('/twoPage', arguments: 'teste')
                    .then((value) => print(value));*/
              },
              title: 'Sortear número aleatório',
              //titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
