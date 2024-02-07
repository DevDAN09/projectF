import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class TaggerViewModel extends BaseViewModel{
  static TaggerViewModel? _instance;

  // isSelected 리스트를 정의합니다. 초기값을 설정할 수도 있습니다.
  final List<bool> _isSelected = [false, false, false];

  // isSelected 리스트에 대한 getter를 제공합니다.
  List<bool> get isSelected => _isSelected;

  // Singleton Design Pattern
  static TaggerViewModel get instance {
    _instance ??= TaggerViewModel();
    return _instance!;
  }

  void setSelected(int index, bool value) {
    if (index < isSelected.length) {
      isSelected[index] = value;
      notifyListeners(); // 상태 변경을 알립니다.
    }
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

}