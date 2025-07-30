import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExtension on BuildContext {
  // theme
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  // routes
  void goBack() => Navigator.of(this).pop();

  Future<void> goToNamed(String route, {Object? arguments}) async => goNamed(
        route,
        extra: arguments,
      );

  Future<void> goToNamedReplace(String route, {Object? arguments}) async =>
      await Navigator.of(this).pushReplacementNamed(
        route,
        arguments: arguments,
      );

  void goBackUntil(String backRoute) => Navigator.of(this).popUntil(
        (route) => route.settings.name == backRoute,
      );

  void goBackUntilAndPush(
    String pushRoute,
    String backRoute, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        pushRoute,
        (route) => route.settings.name == backRoute,
      );

  void removeAllAndPush(
    String pushRoute, {
    Object? arguments,
  }) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        pushRoute,
        (route) => false,
      );
}
