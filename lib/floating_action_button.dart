import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonDemoState();
  }
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  static List<FloatingActionButtonLocation> locationList = [
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.centerTop,
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.endTop,
    FloatingActionButtonLocation.miniCenterDocked,
    FloatingActionButtonLocation.miniCenterFloat,
    FloatingActionButtonLocation.miniCenterTop,
    FloatingActionButtonLocation.miniEndDocked,
    FloatingActionButtonLocation.miniEndFloat,
    FloatingActionButtonLocation.miniEndTop,
    FloatingActionButtonLocation.miniStartDocked,
    FloatingActionButtonLocation.miniStartFloat,
    FloatingActionButtonLocation.miniStartTop,
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.startFloat,
    FloatingActionButtonLocation.startTop
  ];
  int i = 0;
  FloatingActionButtonLocation _location = locationList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Second"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              i += 1;
              i %= locationList.length;
              _location = locationList[i];
            });
          },
          child: Icon(Icons.next_plan)),
      floatingActionButtonLocation: _location,
    );
  }
}
