import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollControllerProvider extends InheritedWidget {
  final ItemScrollController itemScrollController;

  const ScrollControllerProvider({
    super.key,
    required this.itemScrollController,
    required super.child,
  });

  static ScrollControllerProvider? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScrollControllerProvider>();
  }

  @override
  bool updateShouldNotify(ScrollControllerProvider oldWidget) {
    return itemScrollController != oldWidget.itemScrollController;
  }
}
