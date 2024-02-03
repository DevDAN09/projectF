import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class OnboardingViewModel extends BaseViewModel{
  int step = 1;

  static OnboardingViewModel? _instance;

  // Singleton Design Pattern
  static OnboardingViewModel get instance {
    _instance ??= OnboardingViewModel();
    return _instance!;
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

  void onTapNext(){
    step += 1;
    //print("NAME : $name");
    //notifyListeners();
    if (step == 2) {
      viewModelContext.pushReplacementNamed(Routes.singleInitStep2);
    } else if (step == 3) {
      //viewModelContext.pushReplacementNamed(Routes.initStep3);
    } else if (step == 4) {
      //viewModelContext.pushReplacementNamed(Routes.initStep4);
    }
  }

  TextEditingController nameTextController = TextEditingController();

  int gradeNum = 0;
  int classNum = 0;

  void onChangedGrade(int value) {
    gradeNum = value;
  }

  void onChangeClass(int value){
    classNum = value;
  }
}