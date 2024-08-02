import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.textColor,
      this.bgColor = Colors.white,
      required this.text,
      required this.borderRadius})
      : super(key: key);

  final Color? textColor;
  final Color bgColor;
  final String text;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              )),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold
            ),
          )),
    );
  }
}
