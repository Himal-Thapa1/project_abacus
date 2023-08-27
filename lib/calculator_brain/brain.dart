import 'package:petitparser/petitparser.dart';

class CalculatorBrain {
  double _evaluateExpression(String expression) {
    var number = (digit().plus() & (char('.') & digit().plus()).optional())
        .flatten()
        .trim()
        .map((value) => double.parse(value));

    var term = number | (char('(') & ref(() => expression) & char(')')).pick(1);

    var multiplication = term
        .separatedBy(char('*').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a * b));

    var division = multiplication
        .separatedBy(char('/').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a / b));

    var subtraction = division
        .separatedBy(char('-').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a - b));

    var expressionParser = subtraction
        .separatedBy(char('+').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a + b));

    var result = expressionParser.parse(expression);
    return result.value.toDouble();
  }

  String calculate(String input) {
    double result = _evaluateExpression(input);

    if (result == result.toInt()) {
      return result.toInt().toString();
    } else {
      return result.toStringAsFixed(2);
    }
  }
}
