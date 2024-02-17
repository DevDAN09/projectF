
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
                                  viewModel.isSelected[0]?
                                  NameTag(name: "사용완료",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25)
                                      :
                                  Draggable(data: "이예림",
                                    feedback: NameTag(name: "이예림",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                    child: NameTag(name: "이예림",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                  ),

                                  viewModel.isSelected[1]?
                                  NameTag(name: "사용완료",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25)
                                      :
                                  Draggable(data: "윤영민",
                                    feedback: NameTag(name: "윤영민",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                    child: NameTag(name: "윤영민",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                  ),

                                  viewModel.isSelected[2]?
                                  NameTag(name: "사용완료",
                                      height: 100,
                                      width: screenWidth / 4,
                                      fontSize: 25)
                                      :
                                  Draggable(data: "김예찬",
                                    feedback: NameTag(name: "김예찬",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                    child: NameTag(name: "김예찬",
                                        height: 100,
                                        width: screenWidth / 4,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              TestPaper(
                                        opinion: "너의 첫 인상은 이런 것 같아 그래서 정말 친해지고 싶어",
                                        onNameAccepted: (String name) {
                                          viewModel.setSelected(0, true);
                                        },
                                        offset: Offset(-100,-40),
                                      ),
                                    TestPaper(
                                          opinion: "정말 착해",
                                          onNameAccepted: (String name) {
                                            viewModel.setSelected(1, true);
                                          },
                                          offset: Offset(100,-200),
                                        ),
                                    TestPaper(
                                          opinion: "정말 착해",
                                          onNameAccepted: (String name) {
                                            viewModel.setSelected(2, true);
                                          },
                                          offset: Offset(-100, -270),
                                      edgeInsets: EdgeInsets.only(left: 12, right: 12, top: 12),
                                        ),
                            ]
                        )
                    ),
                    Transform.translate( //분필디자인
                      offset: Offset(150, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
