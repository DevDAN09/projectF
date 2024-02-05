import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/common/view/name_tag.dart';
import 'package:projectf/core/common/view/class_motto.dart';
import 'package:projectf/core/common/view/class_sign.dart';
import 'package:projectf/core/common/view/test_paper.dart';
import 'package:projectf/screens/multi_play/game/tagger/tagger_view_model.dart';

class TaggerStep2View extends StatefulWidget {
  const TaggerStep2View({super.key});

  @override
  _TaggerStep2ViewState createState() => _TaggerStep2ViewState();
}



class _TaggerStep2ViewState extends State<TaggerStep2View> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return BaseView(
        viewModel: TaggerViewModel.instance,
        builder: (context2, viewModel, child) {
          return Scaffold(
            backgroundColor: ColorSystem.backgroundColor2,
            body: Container(
              width: screenWidth,
              height: screenHeight,
              margin: EdgeInsets.only(top: 30),
              child: Column(
                  children: [
                    ClassSign(grade: "3", classNum: "2"),
                    Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 3,
                                width: double.infinity,
                              ),
                              ClassMotto(motto: "첫인상"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Draggable(data: "이예림",
                                      feedback: NameTag(name: "이예림",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25),
                                    child: NameTag(name: "이예림",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25)
                                  ),

                                  NameTag(name: "윤영민",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25),
                                  NameTag(name: "김예찬",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25),
                                ],
                              ),
                              Stack(
                                  children: [
                                    Transform.translate(
                                        offset: Offset(-90, -40),
                                        child: TestPaper(
                                          opinion: "너의 첫 인상은 이런 것 같아 그래서 정말 친해지고 싶어",)
                                    ),
                                    Transform.rotate(angle: -0.1,
                                        child: Transform.translate(
                                        offset: Offset(85, 100),
                                            child: TestPaper(
                                            opinion: "너의 첫 인상은 이런 것 같아 그래서 정말 친해지고 싶어",)
                                          ),
                                    ),
                                    Transform.rotate(angle: 0.1,
                                      child: Transform.translate(
                                          offset: Offset(-60, 200),
                                          child: TestPaper(
                                            opinion: "너의 첫 인상은 이런 것 같아 그래서 정말 친해지고 싶어",)
                                      ),
                                    ),
                                  ]
                              ),

                            ]
                        )

                    ),
                    Spacer(),
                    Transform.translate(
                      offset: Offset(150, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20),
                          // 모서리를 둥글게 만들기 위한 값 (20은 픽셀 단위입니다)
                          border: Border.all(
                              color: ColorSystem.white,
                              width: 2),
                          // 선택적: 외곽선 추가
                          color: ColorSystem.white, // 배경 색상 설정
                        ),
                        width: 50,
                        height: 10,
                      ),
                    ),
                    Container(
                      color: ColorSystem.lightGray,
                      width: double.infinity,
                      height: 50,
                    )
                  ]
              ),
            ),

          );
        });
  }
}
