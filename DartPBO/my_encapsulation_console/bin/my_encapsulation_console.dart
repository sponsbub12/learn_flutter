import 'dart:io';
import 'package:my_encapsulation_console/persegipanjang.dart';
//enkapsulasi
//properti pada dart sama sperti setter getter
void main(List<String> arguments) {
  //PersegiPanjang <- Class , kotak1 kotak 2 -> identifier
  PersegiPanjang kotak1 , kotak2;
  double luasKotak1;
  //pembuatan objek -> kotak 1 adalah objek baru dari PersegiPanjang
  //new adalah optional pada bhs dart.
  kotak1 = new PersegiPanjang();
  kotak1.setPanjang(2);
  kotak1.lebar = -3;
  //membuat objek tanpa menggunakan new , sama saja didalam DART
  kotak2 = PersegiPanjang();
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luasKotak1 = kotak1.luas;
  print(luasKotak1 + kotak2.luas);
  //menggunakan setter getter
  print('panjang kotak1 = ${kotak1.getPanjang()}');
  //menggunakan properti
  print('lebar kotak 1 = ${kotak1.lebar}');
}


