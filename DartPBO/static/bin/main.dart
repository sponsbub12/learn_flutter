import 'package:static/static_keyword.dart';

void main(List<String> arguments) {
  //Person = Objek
  Person person = Person('David',170);

  //memanggil static
  print(Person.maxAge);
}
