import 'package:flutter/material.dart';
import 'package:lesson_di/calc_service.dart';
import 'package:lesson_di/example_view_model.dart';
import 'package:lesson_di/example_widget.dart';
import 'package:lesson_di/main.dart';
import 'package:lesson_di/main_namigation/mainNavigation.dart';
import 'package:lesson_di/summator.dart';

import '../my_app.dart';

MainDIContainer makeDIContainer() => _DIContainer();

class _DIContainer implements MainDIContainer, ScreenFactory {
  late final MainNavigation _mainNavigation;

  Summator _makeSummator() => const Summator();

  CalculatorService _makeCalculatorService() =>
      CalculatorService(_makeSummator());

  ExampleWidgetModel _makeExampleCalcViewModel() =>
      ExampleCalcViewModel(_makeCalculatorService());

  @override
  Widget makeExampleScreen() =>
      ExampleWidget(model: _makeExampleCalcViewModel());

  @override
  Widget makeApp() => MyApp(mainNavigation: _mainNavigation);

  _DIContainer() {
    _mainNavigation = MainNavigationDefault(this);
  }

}
