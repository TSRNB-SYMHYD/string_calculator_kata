import 'package:string_calculator_kata/string_calculator_kata.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(""), equals(0));
  });
  test('Single number returns its value', () {
    expect(add("4"), equals(4));
  });

}
