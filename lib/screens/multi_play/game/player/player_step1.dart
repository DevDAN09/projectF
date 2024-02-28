import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/common/view/class_motto.dart';
import 'package:projectf/core/common/view/class_sign.dart';
import 'package:projectf/screens/multi_play/game/player/player_view_model.dart';

class PlayerStep1View extends StatefulWidget {
  const PlayerStep1View({super.key});

  @override
  _PlayerStep1ViewState createState() => _PlayerStep1ViewState();
}



class _PlayerStep1ViewState extends State<PlayerStep1View> {
  bool isLight = true; // SwitchTest의 상태를 추적하는 로컬 변수

  @override
  void initState() {
    super.initState();
  }


  void _handleSwitchChange(bool newValue) {
    setState(() {
      isLight = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return BaseView(
      viewModel: PlayerViewModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor2,
          body: Column(
              children: [
                Container(height: 30),
                ClassSign(grade: "3", classNum: "2"),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                            children: [
                              ClassMotto(motto: "첫인상"),
                              Container(height: 5),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width : screenWidth, height : screenHeight-219,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text("답변작성화면", style:TextStyle(color: Colors.white),),
                      ),
                      const Spacer(),
                      Transform.translate( //분필 디자인
                          offset: Offset(150,0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20), // 모서리를 둥글게 만들기 위한 값 (20은 픽셀 단위입니다)
                              border: Border.all(color: ColorSystem.white, width: 2), // 선택적: 외곽선 추가
                              color: ColorSystem.white, // 배경 색상 설정
                            ),
                          width:50,
                          height: 10,
                        ),
                      ),
                      Container(
                        color : ColorSystem.lightGray,
                        width: double.infinity,
                        height: 80,
                      )
                    ],
                  )
                )
              ]
          ),
        );
      },
    );
  }
}
