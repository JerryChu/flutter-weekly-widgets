import 'dart:math';
import 'package:flutter/material.dart';

class Utils {
  static Color randomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
