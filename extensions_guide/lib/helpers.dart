import 'package:flutter/widgets.dart';

int getWordsCount(String string) {
  if (string.trim().isEmpty) {
    return 0;
  }
  return string.trim().split(RegExp('(s|\\W)+')).length;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

num addTen(num number) {
  return number + 10;
}
