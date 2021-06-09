
import 'package:generics/datetime_secure_box.dart';
import 'package:generics/int_secure_box.dart';
import 'package:generics/secure_box.dart';

void main(List<String> arguments) {
  // var box = IntSecureBox(100,'123');
  // print(box.getData('123').toString());

  // var box2 = DateTimeSecureBox(DateTime.now(),'123');
  // print(box2.getData('123').toString());

  // var box = SecureBox<String>('halo','123');
  var box = SecureBox<Person>(Person('Dodi'),'123');
  print(box.getData('123').name);
}

class Person{
  final String name;
  Person(this.name);
}

