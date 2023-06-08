import 'package:flutter/material.dart';

extension Size on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension TextStyles on BuildContext {
  TextTheme get textList => Theme.of(this).textTheme;
}
