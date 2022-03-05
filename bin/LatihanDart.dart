import 'dart:io';

void main(List<String> arguments) {
  stdout.write("n = ");
  String? input = stdin.readLineSync();

  int? n = int.parse(input!);

  print("n = $n");

  int ctr = 0;

  int angka = 1;

  for (int i = 1; i <= n; i++) {
    //stdout.write("  $ctr");

    if (i > 2 && i < (n / 2).round()) {
      ctr++;
    } else if (i > (n / 2).round() + 1) {
      ctr--;
    }

    if (angka > 9) {
      angka = 1;
    }

    //stdout.write(" $ctr ");

    for (int j = 1; j <= n; j++) {
      if (i == 1 || i == n) {
        if (j == (n / 2).round()) {
          stdout.write("$angka");
        } else {
          stdout.write("*");
        }
      } else {
        if (i == (n / 2).round()) {
          if (j == 1 || j == n || j == (n / 2).round()) {
            stdout.write("$angka");
          } else {
            stdout.write(" ");
          }
        } else {
          if (j == (n / 2).round()) {
            stdout.write(" ");
          } else if (j > (n / 2).round() && j <= (n / 2).round() + ctr) {
            stdout.write(" ");
          } else if (j < (n / 2).round() && j >= (n / 2).round() - ctr) {
            stdout.write(" ");
          } else if (j == (n / 2).round() - ctr - 1 ||
              j == (n / 2).round() + 1 + ctr) {
            stdout.write("$angka");
          } else {
            stdout.write("*");
          }
        }
      }
    }

    angka++;

    stdout.write(" $ctr ");
    stdout.write("\n");
  }
}
