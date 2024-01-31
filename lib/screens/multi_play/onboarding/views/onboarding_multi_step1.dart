import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/screens/multi_play/onboarding/onboarding_view_multi_model.dart';
import 'package:projectf/core/common/view/bottom_button.dart';

class OnboardingMultiStep1View extends StatelessWidget {
  const OnboardingMultiStep1View({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: OnboardingViewMultiModel.instance,
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
                    "멀티 화면이에요",
                    //style: FontSystem.initTextStyle,
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