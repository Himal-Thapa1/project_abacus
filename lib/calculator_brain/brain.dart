// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:petitparser/petitparser.dart';

class CalculatorBrain {
  double _evaluateExpression(String expression) {
    // var number = digit().plus().flatten().trim().map((value) => double.parse(value));
    var number = (digit().plus() & (char('.') & digit().plus()).optional())
        .flatten()
        .trim()
        .map((value) => double.parse(value));
    // ignore: deprecated_member_use
    var term = number | (char('(') & ref(() => expression) & char(')')).pick(1);


    var factor = term
        .separatedBy(char('*').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a * b));
    var expressionParser = factor
        .separatedBy(char('+').trim(), includeSeparators: false)
        .map((list) => list.reduce((a, b) => a + b));

    var result = expressionParser.parse(expression);
    return result.value.toDouble();
  }

  String calculate(String input) {
    // Replace 'X' with '*' for multiplication
    String processedInput = input.replaceAll("X", "*");

    double result = _evaluateExpression(processedInput);

    // return result.toStringAsFixed(2); // You can adjust the decimal places as needed
    if (result == result.toInt()) {
      // If the result is an integer, return it as an integer
      return result.toInt().toString();
    } else {
      // If the result has a decimal point, return it as a double
      return result.toStringAsFixed(2);
    }
  }
}
