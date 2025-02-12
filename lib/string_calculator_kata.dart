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
  return parts.map(int.parse).reduce((a, b) => a + b);
}
