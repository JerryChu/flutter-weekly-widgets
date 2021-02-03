import 'package:flutter/material.dart';

import 'base/common_widgets.dart';

class ExpandedDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpandedDemoState();
  }
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Expanded")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Separator(),
            HintText("no expanded"),
            Row(
              children: [
                _demoWidget(false),
                _demoWidget(false),
                _demoWidget(false),
              ],
            ),
            Separator(),
            HintText("single expanded"),
            Row(
              children: [
                _demoWidget(false),
                _demoWidget(true),
                _demoWidget(false),
              ],
            ),
            Separator(),
            HintText("double expanded"),
            Row(
              children: [
                _demoWidget(false),
                _demoWidget(true),
                _demoWidget(true),
              ],
            ),
            Separator(),
            HintText("all expanded"),
            Row(
              children: [
                _demoWidget(true),
                _demoWidget(true),
                _demoWidget(true),
              ],
            ),
          ],
        ));
  }

  Widget _demoWidget(bool expanded) {
    if (expanded) {
      return Expanded(child: ColoredContainer(height: 100, width: 50));
    } else {
      return ColoredContainer(height: 100, width: 50);
    }
  }
}
