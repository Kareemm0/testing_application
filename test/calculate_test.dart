import 'package:flutter_test/flutter_test.dart';
import 'package:testing_application/calculator.dart';

void main() {
  late Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group("Calculation Operations", () {
    test('Addition should return correct result', () {
      expect(calculator.add(5, 3), 8);
    });

    test('Subtraction should return correct result', () {
      expect(calculator.subtract(10, 4), 6);
    });

    test('Multiplication should return correct result', () {
      expect(calculator.multiply(4, 5), 20);
    });

    test('Division should return correct result', () {
      expect(calculator.divide(20, 5), 4);
    });

    test('Division by zero should throw exception', () {
      expect(() => calculator.divide(10, 0), throwsException);
    });
  });
}
