import 'package:flutter/material.dart';

import 'base/common_widgets.dart';

class WrapDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WrapDemoState();
  }
}

class _WrapDemoState extends State<WrapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Separator(),
        HintText("using row"),
        Row(children: [
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
        ]),
        Separator(),
        HintText("using wrap"),
        Wrap(children: [
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
        ]),
        Separator(),
        HintText("using wrap (center)"),
        Wrap(alignment: WrapAlignment.center, children: [
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
        ]),
        Separator(),
        HintText("using wrap (spaceBetween)"),
        Wrap(alignment: WrapAlignment.spaceBetween, children: [
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
          ColoredContainer(),
        ]),
      ]),
    );
  }
}
