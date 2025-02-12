int add(String numbers) {
  if (numbers.isEmpty) return 0;

  if (!numbers.contains(",") && !numbers.contains("\n")) {
    return int.parse(numbers);
  }
  
  String delimiterPattern = r",|\n";
  if (numbers.startsWith("//")) {
    final delimiterEndIndex = numbers.indexOf("\n");
    final customDelimiter = numbers.substring(2, delimiterEndIndex);
    delimiterPattern = RegExp.escape(customDelimiter);
    numbers = numbers.substring(delimiterEndIndex + 1);
  }
  
  final parts = numbers.split(RegExp(delimiterPattern));
  final ints = parts.map(int.parse).toList();

  final negatives = ints.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception("negative numbers not allowed ${negatives.join(",")}");
  }
  
  return ints.fold(0, (a, b) => a + b);
}
