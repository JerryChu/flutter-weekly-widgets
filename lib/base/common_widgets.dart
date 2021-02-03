import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HintText extends Text {
  const HintText(String data)
      : super(data, style: const TextStyle(fontSize: 15));
}

class Separator extends SizedBox {
  const Separator() : super(height: 10);
}

class ColoredContainer extends Container {
  ColoredContainer({double width = 100, double height = 50})
      : super(
            margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
            width: width,
            height: height,
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)]);
}
