import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/core/base/base_view.dart';
import 'package:projectf/core/networks/http/room/room_api.dart';
import 'package:projectf/core/models/player.dart';
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
      print("step : $step");
    } else if (step == 3) {
      print("input: $name");
      viewModelContext.pushReplacementNamed(Routes.CreateRoomStep1);
      print("step : $step");
    } else if (step == 4) {
      viewModelContext.pushReplacementNamed(Routes.ReadyRoomMain);
      print("input: $gradeNum - $classNum");
      print("step : $step");
    }
  }

  void onTapEntry(){
    viewModelContext.pushReplacementNamed(Routes.singleInitStep1);
  }

  TextEditingController nameTextController = TextEditingController();

  String gradeNum = "";
  String classNum = "";
  String name = "";

  void onChangedGrade(String value) {
    gradeNum = value;
    print("onChangeGradeNum : $gradeNum");
  }

  void onChangedClass(String value){
    classNum = value;
    print("onChangeClass : $classNum");
  }

  void onChangedName(String value){
    name = value;
    print("onChangeName : $name");
  }

  void onTapNext(int value){
    viewModelContext.pushReplacementNamed(Routes.multiInitStep1);
  }
}