import 'package:flutter/material.dart';

import 'base/common_widgets.dart';

class SafeAreaDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SafeAreaDemoState();
  }
}

class _SafeAreaDemoState extends State<SafeAreaDemo> {
  bool withSafeArea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        _fullSizeWidget(withSafeArea),
        Column(children: [
          Spacer(),
          HintText((withSafeArea ? "with" : "without") + " safe area"),
          Transform.scale(
              scale: 1.5,
              child: Switch(onChanged: _toggle, value: withSafeArea)),
          Spacer(),
        ]),
      ]),
    );
  }

  void _toggle(bool newValue) {
    setState(() {
      withSafeArea = !withSafeArea;
    });
  }

  Widget _fullSizeWidget(bool withSafeArea) {
    if (withSafeArea) {
      return SafeArea(
          child: SizedBox.expand(child: Container(color: Colors.red)));
    } else {
      return SizedBox.expand(child: Container(color: Colors.red));
    }
  }
}
