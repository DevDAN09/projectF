import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/common/view/name_tag.dart';
import 'package:projectf/core/common/view/class_motto.dart';
import 'package:projectf/core/common/view/class_sign.dart';
import 'package:projectf/core/common/view/test_paper.dart';
import 'package:projectf/core/common/view/base_paper.dart';
import 'package:projectf/screens/multi_play/game/tagger/tagger_view_model.dart';

class TaggerResultView extends StatefulWidget {
  const TaggerResultView({super.key});

  @override
  _TaggerResultViewState createState() => _TaggerResultViewState();
}

class _TaggerResultViewState extends State<TaggerResultView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: TaggerViewModel.instance,
      builder: (context2, viewModel, child) {
        return Scaffold(
          backgroundColor: ColorSystem.backgroundColor,
          body: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 50, width: 10),
                      Stack(
                        children: [
                          BasePaper(height: 400, width: 250),
                          Transform.translate(
                            offset: Offset(92,100),
                            child: Text(
                              viewModel.correctNum,
                              style: TextStyle(fontSize: 130,color: Colors.red),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(140,100),
                              child:
                              Image.asset("assets/images/img_divided.png",),
                          ),
                          Transform.translate(
                            offset: Offset(180,250),
                            child: Text(
                              viewModel.questNum,
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                        ],
                      ),
                      //button needs
                      SvgPicture.asset("assets/images/img_nextButton.svg", width: 100, height: 100,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
