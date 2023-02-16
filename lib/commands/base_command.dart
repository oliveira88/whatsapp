import 'package:flutter/cupertino.dart';

BuildContext? _mainContext;
void init(BuildContext c) => _mainContext = c;

abstract class BaseCommand {
  late BuildContext context;
  BaseCommand(BuildContext c) {
    context = c;
  }
}
