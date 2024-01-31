import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class TestPaper extends StatelessWidget {
  final String opinion;
  final double height;
  final double width;
  final double fontSize;

  const TestPaper(
      {required this.opinion, this.height = 200 ,this.width = 150,this.fontSize = 45, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        margin: EdgeInsets.all(12),
        child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  child: Container(
                    height: this.height,
                    width: this.width,
                    color: ColorSystem.white,
                  )
              ),
              Positioned(
                child: Transform.translate(
                  offset: Offset(0,-50),
                  child: Container(
                    margin: EdgeInsets.only(left:10,right:10),
                    child: Image.asset('assets/images/nameTag.png',fit: BoxFit.contain),
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child:  Text("${opinion}",
                  textAlign: TextAlign.center,),
              )
            ]
        )
    );
  }
}