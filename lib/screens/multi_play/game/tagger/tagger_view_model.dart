import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class TaggerViewModel extends BaseViewModel{
  static TaggerViewModel? _instance;

  // Singleton Design Pattern
  static TaggerViewModel get instance {
    _instance ??= TaggerViewModel();
    return _instance!;
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

}