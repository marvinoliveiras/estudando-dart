import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? titleSize;
  final bool disable;

  const CustomButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.titleSize,
      this.disable = false})
      : super(key: key);

  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              if (states.contains(MaterialState.disabled)) return Colors.red;
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.green;
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
            textStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed))
                return TextStyle(
                    fontSize: titleSize != null ? titleSize! * 2 : 28);
              return TextStyle(fontSize: titleSize);
            })),
        onPressed: disable ? null : onPressed,
        child: Text(title));
  }
}
