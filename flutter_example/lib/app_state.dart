import 'package:flutter/cupertino.dart';

class AppState with ChangeNotifier {
  AppState();

  String _someText = "";

  void setText(String text) {
    _someText = text;
    notifyListeners();
  }

  String get getText => _someText;
}
