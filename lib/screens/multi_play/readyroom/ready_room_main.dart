import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/common/view/bottom_button.dart';
import 'package:projectf/core/common/view/name_tag.dart';
import 'package:projectf/core/common/view/class_sign.dart';
import 'package:projectf/core/common/view/switch_test.dart';
import 'package:projectf/screens/multi_play/readyroom/readyroom_view_model.dart';
import 'package:projectf/screens/multi_play/onboarding/onboarding_view_multi_model.dart';

class ReadyRoomMainView extends StatefulWidget {
  const ReadyRoomMainView({super.key});
  @override
  _ReadyRoomMainViewState createState() => _ReadyRoomMainViewState();
}

class _ReadyRoomMainViewState extends State<ReadyRoomMainView> {
  bool isLight = true; // SwitchTest의 상태를 추적하는 로컬 변수

  @override
  void initState(){
    ReadyRoomViewModel.instance.setterRoomId(OnboardingViewMultiModel.instance.roomId);
    //ReadyRoomViewModel.instance.getParticipant();
  }

  void _handleSwitchChange(bool newValue) {
    setState(() {
      isLight = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: ReadyRoomViewModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor,
          body: Column(
              children: [
                Container(height: 30),
                ClassSign(grade: OnboardingViewMultiModel.instance.gradeNum, classNum: OnboardingViewMultiModel.instance.classNum),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                            children: [
                              Container(height: 10),
                              Text("친구들이 다 모였나요?"),
                              Container(height: 5),
                              NameTag(name: "윤영민"),
                              NameTag(name: "김예찬"),
                              NameTag(name: "이예림"),
                              NameTag(name: "홍길동"),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                SwitchTest(onChanged: _handleSwitchChange)
              ]
          ),
          bottomNavigationBar: BottomButton(
              onTap: isLight ? viewModel.onTapStartTagger : viewModel.onTapStartPlayer,
              text: isLight ? "시작(술래)" : "시작(플레이어)"
          ),


        );
      },
    );
  }
}
