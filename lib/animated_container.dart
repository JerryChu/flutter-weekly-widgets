import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weekly_widgets/base/utils.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimatedContainerDemoState();
  }
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double width = 50;
  double height = 50;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.linear,
          width: width,
          height: height,
          color: color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          setState(() {
            width = Random().nextDouble() * 200;
            height = Random().nextDouble() * 400;
            color = Utils.randomColor();
          });
        },
      ),
    );
  }
}
