import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/img/background.jpg',
          fit: BoxFit.cover,
        ),
      ),
      _body(),
    ]));
  }

  Widget _body() {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/img/logo.png')),
              Card(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(children: [
                        TextField(
                            onChanged: (value) {
                              email = value;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder())),
                        SizedBox(height: 10),
                        TextField(
                            onChanged: (value) {
                              senha = value;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Senha',
                                border: OutlineInputBorder())),
                        SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {
                              if (email == 'teste@teste.com' &&
                                  senha == '123456') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                print('login errado');
                              }
                            },
                            child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                )))
                      ])))
            ],
          ),
        ));
  }
}
