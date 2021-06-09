import 'package:ignore_parameter/ignore_parameter.dart';

void main(List<String> arguments) {
  //underscore parameter
  Person person = Person('Edward', doingHobby: (_){
  // print('$name is swimming');
  print('Swimming in the pool');
  });
  person.takeRest();
}

// void edwardHobby(String name){
//   print('$name is swimming');
// }