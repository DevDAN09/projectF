import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';

class SwitchTest extends StatefulWidget {
  final Function(bool) onChanged; // 콜백 함수를 위한 생성자 매개변수 추가
  const SwitchTest({super.key, required this.onChanged});
  @override
  State<SwitchTest> createState() => _SwitchTestState();
}

class _SwitchTestState extends State<SwitchTest> {
  bool _light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        setState(() {
          _light = value;
        });
        widget.onChanged(value); // 콜백 함수 호출
      },
    );
  }
}