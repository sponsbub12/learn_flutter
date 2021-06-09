import 'dart:io';

//class & object
void main(List<String> arguments) {
  //PersegiPanjang <- Class , kotak1 kotak 2 -> identifier
  PersegiPanjang kotak1 , kotak2;
  double luasKotak1;
  //pembuatan objek -> kotak 1 adalah objek baru dari PersegiPanjang
  //new adalah optional pada bhs dart.
  kotak1 = new PersegiPanjang();
  kotak1.panjang = 2;
  kotak1.lebar = 3;
  //membuat objek tanpa menggunakan new , sama saja didalam DART
  kotak2 = PersegiPanjang();
  kotak2.panjang = 4;
  kotak2.lebar = 2;

  luasKotak1 = kotak1.hitungLuas();
  print(luasKotak1 + kotak2.hitungLuas());
  
}

class PersegiPanjang{
  //field (apa pun yang dimiliki oleh class)
  double panjang , lebar;
  //method -> fungsi yang dijalankan oleh suatu class
  double hitungLuas(){
    //bisa menggunakan this atau pun tidak menggunakan this
    //karena tetap merujuk pada milik persegi panjang
    return this.panjang * lebar;
  }
}