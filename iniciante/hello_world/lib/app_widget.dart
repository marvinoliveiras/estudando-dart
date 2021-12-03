import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}
