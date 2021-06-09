import 'package:meta/meta.dart';

void main(List<String> arguments) {
  Person person;

  try{
  person = Person(name: null);
  }catch(e){
  print("Hello");
  }
}

class Person{
  String name;
  int age;

  Person({@required this.name , this.age = 0}){
    assert(name != null,"Name cannot be null");
  }
}
