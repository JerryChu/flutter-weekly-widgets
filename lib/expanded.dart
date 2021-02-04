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
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, false),
                _demoWidget(Colors.blue, false),
              ],
            ),
            Separator(),
            HintText("single expanded"),
            Row(
              children: [
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, true),
                _demoWidget(Colors.blue, false),
              ],
            ),
            Separator(),
            HintText("double expanded"),
            Row(
              children: [
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, true),
                _demoWidget(Colors.blue, true),
              ],
            ),
            Separator(),
            HintText("all expanded"),
            Row(
              children: [
                _demoWidget(Colors.red, true),
                _demoWidget(Colors.green, true),
                _demoWidget(Colors.blue, true),
              ],
            ),
          ],
        ));
  }

  Widget _demoWidget(Color color, bool expanded) {
    if (expanded) {
      return Expanded(
        child: ColoredContainer(
          height: 100,
          width: 50,
          color: color,
        ),
      );
    } else {
      return ColoredContainer(
        height: 100,
        width: 50,
        color: color,
      );
    }
  }
}
