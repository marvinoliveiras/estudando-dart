import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Ir para Segunda pagina'),
        ),
      ),
    );
  }
}
