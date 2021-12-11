import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                          'https://avatars.githubusercontent.com/u/56852160?v=4')),
                  accountName: Text("Marcos Silva"),
                  accountEmail: Text("teste@teste.com")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                subtitle: Text('Tela inicial'),
                onTap: () {
                  print("home");
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                subtitle: Text('Sair do app'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home Page'),
          actions: [CustomSwitch()],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contador $counter",
                  ),
                  CustomSwitch()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CustomSwitch(), CustomSwitch(), CustomSwitch()],
              )
            ])),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  //const CustomSwitcher({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
