import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_1/services/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.wait([PrefsService.isAuth(), Future.delayed(Duration(seconds: 2))])
        .then((value) => value[0]
            ? Navigator.of(context).pushReplacementNamed('/home')
            : Navigator.of(context).pushReplacementNamed('/login'));
    /*Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed('/login');
    });*/
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}
