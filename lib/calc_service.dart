import 'package:lesson_di/summator.dart';

enum CalcServiceOperation { summ }

// abstract class CalcServiceSummator {
//   int sum(int a, int b);
// }

class CalculatorService {
  final Summator summator;

  const CalculatorService(this.summator);
  
  int calc(int a, int b, CalcServiceOperation operation) {
    if (operation == CalcServiceOperation.summ) {
      return summator.sum(a, b);
    } else {
      return 0;
    }
  }
}
