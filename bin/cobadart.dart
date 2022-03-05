import 'dart:io';

// String hitung (String nama, {int? uang = 100000, int? pengeluaran = 0}) {
//   int sisa = uang! - pengeluaran!;

//   return "$nama sisa uangnya sebesar $sisa";
// }

//function
String hitung (String nama, [int? uang = 50000, int pengeluaran = 10000]) {
  int sisa = uang! - pengeluaran!;

  return "$nama sisa uangnya sebesar $sisa";
}

//higher order
void HOrder (String nama, int a, int b, Function param) {
  print(nama + " " + param(a, b).toString());
}

//closures
Function terimaData (data) {
  return () => print("Data yang dikirim = $data");
}

void main(List<String> arguments) {
  print('Hello world!');

  //High Order
  HOrder("Function Tambah", 3, 5, (a, b) => a+b);
  HOrder("Function Kali", 3, 5, (a, b) => a*b);

  //closures
  var d = terimaData("Check Check Check");
  d();
  
  //firstclass - standard
  var total = (int bil1, int bil2) {
    return bil1 + bil2;
  };

  print (total(2, 5));

  //lambda function
  var tot = (int bil1, int bil2) => bil1 + bil2;
  print(tot(3, 2));

  //function parameter
  print(hitung("Sari", 100000, 50000));



  // //input dan output
  // stdout.write("Masukkan Kata = ");
  // String? input = stdin.readLineSync();
  // int angka = int.parse(input!);

  // print(input);

  // //if else
  // if (angka % 2 == 1) {
  //   print("Angka Ganjil Gan");
  // } else {
  //   print ("Angka Genap Gan");
  // }

  // //switch case
  // switch(angka % 2) {
  //   case 1:
  //     print("Angka Ganjil Nih Switch");
  //     break;
  //   case 2:
  //     print("Angka Genap Nih Switch");
  //     break;
  // }

  // //For
  // stdout.write("For = ");
  // for (int i = 1; i <= angka; i++) {
  //   stdout.write("$i ");
  // }

  // stdout.write("\n");

  // //do while
  // stdout.write("While = ");
  // while(angka > 0) {
  //   stdout. write("$angka ");
  //   angka--;
  // }
  
  // stdout.write("\n");

}