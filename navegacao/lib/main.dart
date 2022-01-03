import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/one_page.dart';
import 'package:navegacao/two_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => OnePage(),
        '/twoPage': (context) => TwoPage(),
      },
    );
  }
}
