import 'package:flutter/material.dart';
import 'package:lesson_di/factories/di_container.dart';

abstract class MainDIContainer {
  Widget makeApp();
}

final diContainet = makeDIContainer();

void main() {
  runApp(diContainet.makeApp());
}
