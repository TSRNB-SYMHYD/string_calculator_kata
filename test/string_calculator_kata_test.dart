import 'package:string_calculator_kata/string_calculator_kata.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(""), equals(0));
  });
  test('Single number returns its value', () {
    expect(add("4"), equals(4));
  });
  test('Two/multiple numbers, comma-separated, are summed', () {
    expect(add("1,5"), equals(6));
  });
  test('Handles new lines as delimiters', () {
    expect(add("1\n2,3"), equals(6));
  });
  test('Supports custom delimiter', () {
    expect(add("//;\n1;2"), equals(3));
  });

  test('Negative numbers throw an exception with message listing negatives', () {
    expect(
      () => add("1,-2,3,-4"),
      throwsA(predicate((e) =>
        e is Exception &&
        e.toString() == "Exception: negative numbers not allowed -2,-4"))
    );
  });
}
