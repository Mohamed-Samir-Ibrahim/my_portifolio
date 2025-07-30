import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {
  changeLanguage() {
    notifyListeners();
  }
}
