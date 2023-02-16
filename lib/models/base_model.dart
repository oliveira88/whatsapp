import 'package:flutter/material.dart';

abstract class BaseModel extends ChangeNotifier {
  void notify([VoidCallback? action]) {
    action?.call();
    notifyListeners();
  }
}
