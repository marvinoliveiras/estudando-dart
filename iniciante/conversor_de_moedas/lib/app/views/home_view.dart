import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Image.asset(
              'assets/img/icon.png',
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 30,
            ),
            CurrencyBox(
              selectedItem: homeController.toCurrency,
              controller: toText,
              items: homeController.currencies,
              onChanged: (model) {
                setState(() {
                  homeController.toCurrency = model;
                });
              },
            ),
            CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                }),
            SizedBox(height: 30),
            // ignore: prefer_const_constructors
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
              child: Text("Converter"),
              onPressed: () {
                homeController.convert();
              },
            )
          ],
        ),
      ),
    ));
  }
}
