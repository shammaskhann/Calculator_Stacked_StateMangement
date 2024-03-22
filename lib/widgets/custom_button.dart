import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Function onTap;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  const CustomButton(
      {required this.text,
      required this.onTap,
      required this.textColor,
      required this.backgroundColor,
      required this.height,
      required this.width,
      required this.fontSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: InkWell(
          onTap: () => onTap(),
          splashFactory: NoSplash.splashFactory,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'Orbitron',
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          )),
    );
  }
}
