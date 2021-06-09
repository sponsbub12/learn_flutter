import 'dart:io';

void main(List<String> arguments) {

}







void materi2_if_switch() {
  int number = int.tryParse(stdin.readLineSync());
  String output;
  if (number > 0) {
    output = 'Positif';
  } else {
    output = 'Negatif atau Nol';
  }
  output = (number > 0) ? "Positif" : "Negatif atau Nol";
  print(output);
  print((number > 0) ? "Positif" : "Negatif atau Nol");
  print((number > 0) ? number : number * -1);

  switch (number) {
    case 0:
      print('Nol');
      break;
    case 1:
      print('Satu');
      break;
    //sebuah nilai default dari switch case & tidak perlu pakai break;
    default:
      print('Bilangan tidak ada');
  }
}

void materi3_for_unaryOperator() {
  int a, b;
  a = 10;
  b = a++;
  print(a.toString() + ' - ' + b.toString());

  int i = 0;
  for (int counter = 0; counter < 5; counter++) {
    print('Halo');
  }
  while (i < 5) {
    print('Halo ke -' + i.toString());
    i++;
  }
  print('=============');
  int x = 0;
  do {
    print('dododo ke -' + x.toString());
    x++;
  } while (x < 5);
}

//FUNGSI ADALAH FIRST CLASS OBJECT
void contohFirstClass(){
  Function f;
  f = luas_segiempat;
  print(f(6.0,3.0));
}

//PARAMETER
//jika ada nilai yang dapat dikembalikan (expression) maka dapat menggunakan
//lambda / => / () =>
void materi4_parameter_lambdafunc() {
  double p, l;
  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());

  double result = persegi(p, l);
  print(result);
}
double persegi(double panjang, double lebar) {
  double hasil = panjang * lebar;
  return hasil;
}
double luas_segiempat(double panjang, double lebar) => panjang * lebar;
//END PARAMETER//

//NAMED PARAMETER
void namedParameter(){
  print(say('Edward', 'Hello', to: 'Naruto', appName: 'WhatsApp'));
  print('');
  print(say2('Luffy', 'Hello', 'Sasuke', 'Bilibili'));
}
//named Parameter bisa dikosongkan salah satu pada {}
// = adalah default value untuk named parameter
String say(String from, String message, {String to, String appName}) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null ? " via " + appName : ""));
}
//named Position Parameter harus terisi semua karena harus sesuai pada posisinya.
// = adalah default value untuk named parameter
String say2(String from, String message, [String to, String appName = "WhatsApp"]) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null ? " via " + appName : ""));
}
//END NAMED PARAMETER//

//ANONYMOUS FUNCTION
//bila ingin memastikan mathOperator itu tipe nya int bisa dijadikan Function(int , int) mathOperator
int doMathOperator(int number1 , int number2 , Function mathOperator){
  return mathOperator(number1,number2);
}
void printMath(){
  print(doMathOperator(1,2,(a,b)=>a*b));
}
//END ANONYMOUS FUNCTION