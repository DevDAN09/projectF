import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';

class OnboardingStep1View extends StatelessWidget {
  const OnboardingStep1View({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: OnboardingViewModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor,
          body: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "스마트 푸푸를 통해\n아기 똥 색깔을 확인하고\n다이어리를 작성할 수 있어요.",
                    style: FontSystem.initTextStyle,
                  ),
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