import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class NameTag extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final double fontSize;

  const NameTag(
      {required this.name,this.height = 100 ,this.width = 300,this.fontSize = 45, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        margin: EdgeInsets.only(top : 1,left : 12,right : 12,bottom : 12),
        child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/nameTag.png'),
              Positioned(
                  child: Text(
                      '${name}',
                      style: TextStyle(
                        fontSize: this.fontSize,
                        color: ColorSystem.black,
                      )
                  )
              )
            ]
        )
    );
  }
}