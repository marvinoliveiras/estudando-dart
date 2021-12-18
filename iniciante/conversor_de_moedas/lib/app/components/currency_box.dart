import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  late List<CurrencyModel> items;
  late TextEditingController? controller;
  final void Function(CurrencyModel model) onChanged;
  final CurrencyModel selectedItem;
  CurrencyBox(
      {key,
      required this.items,
      this.controller,
      required this.onChanged,
      required this.selectedItem})
      : super(key: key);
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: SizedBox(
            height: 65,
            child: DropdownButton<CurrencyModel>(
                isExpanded: true,
                value: selectedItem,
                iconEnabledColor: Colors.amber,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: items
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
                onChanged: (test) => onChanged),
          )),
      SizedBox(width: 10),
      Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                )),
          ))
    ]);
  }
}
