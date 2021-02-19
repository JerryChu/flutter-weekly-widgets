import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weekly_widgets/base/common_widgets.dart';
import 'package:weekly_widgets/base/utils.dart';

class OpacityDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OpacityDemoState();
  }
}

class _OpacityDemoState extends State<OpacityDemo> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredContainer(),
            Opacity(
              opacity: 0.5,
              child: ColoredContainer(),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    opacity = opacity == 1 ? 0.1 : 1;
                  });
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: opacity,
                        child: ColoredContainer()),
                    HintText("click me.")
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
