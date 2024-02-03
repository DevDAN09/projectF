import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/screens/multi_play/onboarding/onboarding_view_multi_model.dart';
import 'package:projectf/core/common/view/bottom_button.dart';
import 'package:projectf/core/common/view/square_button.dart';

class OnboardingCreateRoomStep1 extends StatelessWidget {
  const OnboardingCreateRoomStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: OnboardingViewMultiModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor,
          body: Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Column(
                        children: [
                          Container(height: 300),
                          Text("생성하실 교실을 선택하세요"),
                          Container(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:
                                SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: ColorSystem.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10), // 여기서 모서리 곡률 정의
                                          borderSide: BorderSide.none, // 필요한 경우 테두리 스타일 조정
                                        ),
                                      ),
                                      onChanged: (value){
                                        viewModel.onChangedGrade(value as int);
                                      },
                                      onSubmitted: (text) => viewModel.onTapNext,
                                    )
                                ),
                              ),
                              Text("학년"),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:
                                SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: ColorSystem.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10), // 여기서 모서리 곡률 정의
                                          borderSide: BorderSide.none, // 필요한 경우 테두리 스타일 조정
                                        ),
                                      ),
                                      onChanged: (value){
                                        viewModel.onChangedGrade(value as int);
                                      },
                                      onSubmitted: (text) => viewModel.onTapCreateRoom,
                                    )
                                ),
                              ),
                              Text("반"),
                            ],
                          ),
                        ]
                    ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomButton(
            onTap: viewModel.onTapCreateRoom,
            text: "다음으로",
          ),
        );
      },
    );
  }
}