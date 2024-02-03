import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class ClassMotto extends StatelessWidget {
  final String motto;

  const ClassMotto(
      {required this.motto, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 300,
        margin: EdgeInsets.only(top : 1,left : 12,right : 12,bottom : 1),
        child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/classMotto.png'),
              Positioned(
                  bottom: 69,
                  child: Text(
                      '급   훈',
                      style: TextStyle(
                        fontSize: 18,
                        color: ColorSystem.black,
                      )
                  )
              ),
              Positioned(
                  child: Text(
                      '${motto}',
                      style: TextStyle(
                        fontSize: 30,
                        color: ColorSystem.black,
                      )
                  )
              )
            ]
        )
    );
  }
}