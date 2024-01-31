import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/screens/multi_play/onboarding/onboarding_view_multi_model.dart';
import 'package:projectf/core/common/view/bottom_button.dart';
import 'package:projectf/core/common/view/square_button.dart';

class OnboardingMultiStep1View extends StatelessWidget {
  const OnboardingMultiStep1View({super.key});

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
                    child: Row(
                      children: [
                        SquareButton(
                            onTap: viewModel.onTapCreateRoom,
                            length : 140,
                            text: "방 생성하기!"
                        ),
                        SquareButton(
                            onTap: viewModel.onTapEntry,
                            length : 140,
                            text: "방 입장하기!"
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}