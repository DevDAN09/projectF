import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class SelectViewModel extends BaseViewModel{

  static SelectViewModel? _instance;

  // Singleton Design Pattern
  static SelectViewModel get instance {
    _instance ??= SelectViewModel();
    return _instance!;
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

  void onTapStartOneClient(){
    viewModelContext.pushReplacementNamed(Routes.singleInitStep1);
  }

  void onTapMutiPlayClient(){
    viewModelContext.pushReplacementNamed(Routes.multiInitStep1);
  }
}