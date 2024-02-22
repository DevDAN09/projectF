import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';
import 'package:projectf/screens/multi_play/onboarding/onboarding_view_multi_model.dart';

class ReadyRoomViewModel extends BaseViewModel{
  static ReadyRoomViewModel? _instance;
  // Singleton Design Pattern
  static ReadyRoomViewModel get instance {
    _instance ??= ReadyRoomViewModel();
    return _instance!;
  }

  final List<String> _participant = ["","",""];
  final _onboardingViewModel = OnboardingViewMultiModel.instance;

  String _roomId = "";

  String get roomId => _roomId;



  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

  void setterRoomId(String roomId) {
    _roomId = roomId;
    // 필요한 경우 추가 로직 구현
  }


  void onTapStartTagger(){
    viewModelContext.pushReplacementNamed(Routes.TaggerStep1);
  }

  void onTapStartPlayer(){

  }
}