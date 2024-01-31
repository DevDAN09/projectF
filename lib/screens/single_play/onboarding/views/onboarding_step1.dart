import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/screens/single_play/onboarding/onboarding_view_model.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/bottom_button.dart';

class OnboardingStep1View extends StatelessWidget {
  const OnboardingStep1View({super.key});

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
                     Text("입장하실 교실을 선택하세요"),

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