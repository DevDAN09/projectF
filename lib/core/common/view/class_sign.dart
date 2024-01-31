import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class ClassSign extends StatelessWidget {
  final String grade;
  final String classNum;

  const ClassSign(
      {required this.grade,required this.classNum, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Row(
                children:[
                  Container(
                    width: 20,
                    height: 20,
                    color:ColorSystem.Orange,
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    color:ColorSystem.Orange,
                  )
                ]
              ),
              Positioned(
                  top: 6 ,
                  left: 40,
                  child: Text(
                      '${grade} - ${classNum}',
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorSystem.black  ,
                      )
                  )
              )
            ]
        )
    );
  }
}