import 'dart:io';

void main() {
  print("Enter the name of the file you want to read:");
  String? fileName = stdin.readLineSync();

  if (fileName == null || fileName.isEmpty) {
    print("File name cannot be empty.");
    return;
  }

  try {
    File file = File(fileName);

    if (!file.existsSync()) {
      print("File not found: $fileName");
      return;
    }

    String extension = fileName.split('.').last.toLowerCase();

    switch (extension) {
      case 'csv':
        printCSV(file);
        break;
      case 'java':
      case 'dart':
      case 'txt':
        printPlainText(file);
        break;
      default:
        print("Unsupported file format.");
        break;
    }
  } catch (e) {
    print("Error occurred: $e");
  }
}

void printCSV(File file) {
  try {
    List<String> lines = file.readAsLinesSync();
    print("File contents:");
    for (String line in lines) {
      print(line);
    }
  } catch (e) {
    print("Error occurred while reading CSV file: $e");
  }
}

void printPlainText(File file) {
  try {
    String content = file.readAsStringSync();
    print("File contents:");
    print(content);
  } catch (e) {
    print("Error occurred while reading plain text file: $e");
  }
}