import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class SquareButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final EdgeInsets? margin;
  final double length;

  const SquareButton(
      {required this.onTap, required this.text, required this.length, this.margin, super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      enabled: true,
      child: SafeArea(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: length,
            height: length,
            margin: margin ??
                const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorSystem.white,
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              //style: FontSystem.bottomButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}