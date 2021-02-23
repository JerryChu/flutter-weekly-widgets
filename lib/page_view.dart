import 'package:flutter/material.dart';

import 'base/common_widgets.dart';

class PageViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageViewDemoState();
  }
}

class _PageViewDemoState extends State<PageViewDemo> {
  int _pageIndex = 0;
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PageView"),
          backgroundColor: _bgColor(_pageIndex),
        ),
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                SizedBox.expand(child: Container(color: _bgColor(0))),
                SizedBox.expand(child: Container(color: _bgColor(1))),
                SizedBox.expand(child: Container(color: _bgColor(2))),
              ],
              onPageChanged: (int index) {
                setState(() {
                  _pageIndex = index;
                });
              },
            ),
            Center(child: HintText("Page ${_pageIndex + 1}")),
          ],
        ));
  }

  Color _bgColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.green;
      case 2:
        return Colors.blue;
      default:
        return Colors.red;
    }
  }
}
