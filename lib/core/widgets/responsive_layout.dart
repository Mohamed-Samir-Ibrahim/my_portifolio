
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        var screenWidth = constraints.maxWidth;
        if (screenWidth < 600) {
          return widget.mobileLayout;
        } else if (screenWidth >= 600 && screenWidth < 1024) {
          return widget.tabletLayout;
        } else {
          return widget.desktopLayout;
        }
      },
    );
  }
}
