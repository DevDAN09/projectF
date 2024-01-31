import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/screens/main/select_view_model.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/bottom_button.dart';
import 'package:projectf/core/common/view/square_button.dart';

class SelectView extends StatelessWidget {
  const SelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: SelectViewModel.instance,
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
                          onTap: viewModel.onTapStartOneClient,
                          length : 140,
                          text: "폰 하나로!"
                      ),
                      SquareButton(
                          onTap: viewModel.onTapMutiPlayClient,
                          length : 140,
                          text: "폰 여러개로!"
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