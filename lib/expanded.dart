import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpandedDemoState();
  }
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Expanded")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("no expanded"),
            Row(
              children: [
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, false),
                _demoWidget(Colors.blue, false),
              ],
            ),
            SizedBox(height: 10),
            Text("single expanded (green)"),
            Row(
              children: [
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, true),
                _demoWidget(Colors.blue, false),
              ],
            ),
            SizedBox(height: 10),
            Text("double expanded (green & blue)"),
            Row(
              children: [
                _demoWidget(Colors.red, false),
                _demoWidget(Colors.green, true),
                _demoWidget(Colors.blue, true),
              ],
            ),
            SizedBox(height: 10),
            Text("all expanded"),
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
      return Expanded(child: Container(color: color, height: 100, width: 50));
    } else {
      return Container(color: color, height: 100, width: 50);
    }
  }
}
