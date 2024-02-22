import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/core/base/base_viewmodel.dart';
import 'package:projectf/routes/routerConfig.dart';

class TaggerViewModel extends BaseViewModel{
  static TaggerViewModel? _instance;

  // isSelected 리스트를 정의합니다. 초기값을 설정할 수도 있습니다.
  final List<bool> _isSelected = [false, false, false];
  final List<String> _nameList = ["","",""];

  final String _correctNum = "4";
  final String _questNum = "4";

  String get correctNum => _correctNum;
  String get questNum => _questNum;

  // isSelected 리스트에 대한 getter를 제공합니다.
  List<bool> get isSelected => _isSelected;
  List<String> get nameList => _nameList;

  // Singleton Design Pattern
  static TaggerViewModel get instance {
    _instance ??= TaggerViewModel();
    return _instance!;
  }

  void setSelected(int index, bool value) {
    if (index < isSelected.length) {
      isSelected[index] = value;
      notifyListeners(); // 상태 변경을 알립니다.
      if (_isSelected.every((element) => element)) {
        // 모든 항목이 true라면 다음 화면으로 이동합니다.
        _navigateToNextScreen();
      }
    }
  }

  void _navigateToNextScreen() {
    viewModelContext.pushReplacementNamed(Routes.TaggerResult);
  }

  void setName(int index, String name){
    nameList[index] = name;
    print(nameList[index]);
    notifyListeners();
  }

  @override
  void setContext(BuildContext context){
    viewModelContext = context;
  }

}