import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/name_tag.dart';

class BasePaper extends StatefulWidget {
  final double height;
  final double width;
  final double angle;
  final Offset offset;
  final double fontSize;
  final bool isSelected;
  final EdgeInsets edgeInsets;

  BasePaper({
    this.height = 200,
    this.width = 150,
    this.fontSize = 45,
    this.isSelected = false,
    this.offset = const Offset(0,0),
    this.angle = 0.0,
    this.edgeInsets = const EdgeInsets.all(12),
    super.key
  });

  @override
  _BasePaperState createState() => _BasePaperState();
}

class _BasePaperState extends State<BasePaper> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: widget.angle,
        child: Transform.translate(
            offset: widget.offset,
            child: Container(
              height: widget.height,
              width: widget.width,
              margin: widget.edgeInsets,
              child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        child: Container(
                          height: widget.height,
                          width: widget.width,
                          color: ColorSystem.white,
                        )
                    ),
                    Positioned(
                        child: Transform.translate(
                            offset: Offset(0, -50),
                        )
                    ),
                    Container(
                    )
                  ]
              ),
            ),
        ),
      ),
    );
  }

}
