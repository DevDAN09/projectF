import 'package:flutter/material.dart';
import 'package:projectf/core/constant/color_constant.dart';
import 'package:projectf/core/common/view/name_tag.dart';

class TestPaper extends StatefulWidget {
  final String opinion;
  final double height;
  final double width;
  final double fontSize;

  const TestPaper({
    required this.opinion,
    this.height = 200,
    this.width = 150,
    this.fontSize = 45,
    super.key
  });

  @override
  _TestPaperState createState() => _TestPaperState();
}

class _TestPaperState extends State<TestPaper> {
  Image imageData = Image.asset('assets/images/nameTag.png', fit: BoxFit.contain);

  @override
  Widget build(BuildContext context) {
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
                      child: DragTarget(
                        builder: (
                            BuildContext context,
                            List<dynamic> accepted,
                            List<dynamic> rejected,
                            ) {
                          return Container(
                            margin: EdgeInsets.only(left:10, right:10),
                            child: imageData,
                          );
                        },
                        onAccept: (String data) {
                          setState(() {
                            imageData = NameTag(name: data) as Image;
                          });
                        },
                      )
                  )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Text(widget.opinion,
                  textAlign: TextAlign.center,),
              )
            ]
        )
    );
  }
}
