import 'dart:io';

void main(List<String> arguments) {
  stdout.write("n = ");
  String? input = stdin.readLineSync();

  int? n = int.parse(input!);

  print("n = $n");

}