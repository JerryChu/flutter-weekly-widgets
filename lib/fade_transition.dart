import 'package:flutter/material.dart';

import 'base/common_widgets.dart';

class FadeTransitionDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FadeTransitionDemoState();
  }
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransition"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Center(child: ColoredContainer()),
        ),
      ),
    );
  }
}
