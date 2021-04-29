import 'package:flutter/foundation.dart';

Future wait(int millis) async {
  await Future.delayed(Duration(milliseconds: millis));
}

void log(Object obj) {
  if (!kReleaseMode) {
    print(obj);
  }
}
