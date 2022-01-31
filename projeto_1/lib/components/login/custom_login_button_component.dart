import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_1/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  CustomLoginButtonComponent(
      {Key? key, required LoginController this.loginController})
      : super(key: key);

  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Erro com seu usuário e/ou senha'),
                          duration: Duration(seconds: 5)));
                    }
                  });
                },
                child: Text('Login')));
  }
}
