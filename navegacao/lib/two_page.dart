import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/one_page.dart';
import 'package:navegacao/widgets/custom_button_widget.dart';

class TwoPage extends StatelessWidget {
  TwoPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('retorno');
            }
          },
          title: 'Ir para primeira pagina $args',
        ),
      ),
    );
  }
}
