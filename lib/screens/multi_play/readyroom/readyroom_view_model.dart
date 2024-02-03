import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class ReadyRoomViewModel extends BaseViewModel{
  static ReadyRoomViewModel? _instance;

  // Singleton Design Pattern
  static ReadyRoomViewModel get instance {
    _instance ??= ReadyRoomViewModel();
    return _instance!;
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

  void onTapStartTagger(){
    viewModelContext.pushReplacementNamed(Routes.TaggerStep1);
  }

  void onTapStartPlayer(){

  }
}