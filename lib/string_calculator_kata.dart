int add(String numbers) {
  if (numbers.isEmpty) return 0;
  if (!numbers.contains(",") && !numbers.contains("\n")) {
    return int.parse(numbers);
  }
  
  final parts = numbers.split(RegExp(r",|\n"));
  return parts.map(int.parse).reduce((a, b) => a + b);
}
