import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/one_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: OnePage(),
    );
  }
}
