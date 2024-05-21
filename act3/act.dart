import 'dart:io';

void main() {
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  // Read numbers from the input file
  List<double> numbers = readNumbersFromFile(inputFilePath);

  // If numbers were read successfully, calculate the sum and write it to the output file
  if (numbers.isNotEmpty) {
    double sum = numbers.reduce((value, element) => value + element);
    writeSumToFile(outputFilePath, sum);
    print('Sum of numbers written to $outputFilePath');
  } else {
    print('No numbers found in the input file or file not found.');
  }
}

// Function to read numbers from a file
List<double> readNumbersFromFile(String filePath) {
  List<double> numbers = [];
  try {
    numbers = File(filePath)
        .readAsLinesSync()
        .map((line) => double.tryParse(line.trim()) ?? 0)
        .toList();
  } catch (e) {
    print('Error reading file: $e');
  }
  return numbers;
}

// Function to write sum to a file
void writeSumToFile(String filePath, double sum) {
  try {
    File(filePath).writeAsStringSync(sum.toString());
  } catch (e) {
    print('Error writing file: $e');
  }
}