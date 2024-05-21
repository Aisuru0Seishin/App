import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });

  var logger = Logger('main');

  logger.info(tarea1().toString());
  logger.info(tarea2().toString());
}

int tarea1() {
  int num = 5;

  int num2 = 1;

  return num + num2;
}

int tarea2() {
  int number1 = 6;

  int number2 = 1;

  return number1 + number2;
}
