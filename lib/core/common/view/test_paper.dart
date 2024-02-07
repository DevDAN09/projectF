import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/name_tag.dart';

class TestPaper extends StatefulWidget {
  final String opinion;
  final String name;
  final double height;
  final double width;
  final double angle;
  final Offset offset;
  final double fontSize;
  final bool isSelected;
  final Function onNameAccepted;

  TestPaper({
    required this.opinion,
    required this.onNameAccepted,
    this.name = "",
    this.height = 200,
    this.width = 150,
    this.fontSize = 45,
    this.isSelected = false,
    this.offset = const Offset(0,0),
    this.angle = 0.0,
    super.key
  });

  @override
  _TestPaperState createState() => _TestPaperState();
}

class _TestPaperState extends State<TestPaper> {
  late String name;
  late Widget imageData;

  @override
  void initState() {
    super.initState();
    imageData = NameTag(
        name: widget.name,
        height: widget.height,
        width: widget.width,
        fontSize: widget.fontSize
    );
  }

  void updateName(String newName) {
    setState(() {
      imageData = NameTag(
          name: newName,
          height: widget.height,
          width: widget.width,
          fontSize: 25
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: widget.angle,
        child: Transform.translate(
          offset: widget.offset,
          child: DragTarget(
            onAccept: (String data) {
              updateName(data);
              widget.onNameAccepted(data);
              print("draged");
            },
            builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected) {
              return Container(
                  height: widget.height,
                  width: widget.width,
                  margin: EdgeInsets.all(12),
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
                                child: Container(
                                  margin: EdgeInsets.only(left:10, right:10),
                                  child: imageData,
                                )
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: Text(
                            widget.opinion,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  )
              );
            },
          ),
        ),
      ),
    );
  }
}
