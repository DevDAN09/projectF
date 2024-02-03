import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';

import '../../../routes/routerConfig.dart';

class OnboardingViewMultiModel extends BaseViewModel{
  int step = 1;

  static OnboardingViewMultiModel? _instance;

  // Singleton Design Pattern
  static OnboardingViewMultiModel get instance {
    _instance ??= OnboardingViewMultiModel();
    return _instance!;
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

  void onTapCreateRoom(){
    step += 1;
    //print("NAME : $name");
    //notifyListeners();
    if (step == 2) {
      viewModelContext.pushReplacementNamed(Routes.multiInitStep2);
    } else if (step == 3) {
      viewModelContext.pushReplacementNamed(Routes.CreateRoomStep1);
    } else if (step == 4) {
      viewModelContext.pushReplacementNamed(Routes.ReadyRoomMain);
    }
  }

  void onTapEntry(){
    viewModelContext.pushReplacementNamed(Routes.singleInitStep1);
  }

  TextEditingController nameTextController = TextEditingController();

  int gradeNum = 0;
  int classNum = 0;
  String name = "";

  void onChangedGrade(int value) {
    gradeNum = value;
  }

  void onChangeClass(int value){
    classNum = value;
  }

  void onChangeName(String value){
    name = value;
  }

  void onTapNext(int value){
    viewModelContext.pushReplacementNamed(Routes.multiInitStep1);
  }
}