import 'package:flutter/material.dart';

extension PaddingToWidget on Widget {
  Widget setPageHorizontalPadding() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: this,
    );
  }
}
