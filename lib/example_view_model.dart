import 'package:lesson_di/calc_service.dart';
import 'package:lesson_di/my_app.dart';

class ExampleCalcViewModel implements ExampleWidgetModel {
  final CalculatorService calculatorService;

  const ExampleCalcViewModel(this.calculatorService);

  @override
  void onPress() {
    final result = calculatorService.calc(1, 2, CalcServiceOperation.summ);
    print(result);
  }

  @override
  void onPress2() {
    print(5);
  }
}

class ExamplePetModel implements ExampleWidgetModel {
  const ExamplePetModel();
  @override
  void onPress() {
    print('result');
  }

  @override
  void onPress2() {
    print('string');
  }
}
