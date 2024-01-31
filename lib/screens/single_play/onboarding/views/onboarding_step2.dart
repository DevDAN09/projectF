import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/screens/single_play/onboarding/onboarding_view_model.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/bottom_button.dart';

class OnboardingStep2View extends StatelessWidget {
  const OnboardingStep2View({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: OnboardingViewModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor,
          body: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                 child: Column(
                   children: [
                     Container(height: 300),
                     Text("${viewModel.classNum}학년 ${viewModel.gradeNum}반 화면 입니다."),

                   ],
                 )

                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomButton(
            onTap: viewModel.onTapNext,
            text: "다음으로",
          ),
        );
      },
    );
  }
}