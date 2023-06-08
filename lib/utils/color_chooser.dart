import 'package:flutter/material.dart';

class ColorChooser {
  static Color frmHex(String sourceColor) {
    int? i = int.tryParse(sourceColor.replaceFirst('#', '0xff'));
    return Color(i!);
  }
}
