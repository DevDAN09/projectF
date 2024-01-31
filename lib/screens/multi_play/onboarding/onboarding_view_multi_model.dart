import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';

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

  void onTapNext(){
    step += 1;
    //print("NAME : $name");
    //notifyListeners();
    if (step == 2) {
      //viewModelContext.pushReplacementNamed(Routes.initStep2);
    } else if (step == 3) {
      //viewModelContext.pushReplacementNamed(Routes.initStep3);
    } else if (step == 4) {
      //viewModelContext.pushReplacementNamed(Routes.initStep4);
    }
  }
}