void main(List<String> arguments) {
  List<Person> person = [
    Person('Admin', 25),
    Person('Teacher', 45),
    Person('Student', 14),
    Person('Student', 19),
    Person('Student', 17),
    Person('Merchant', 22),
    Person('Merchant', 27),
  ];
  //person.sort((person1 , person2) => person1.age - person2.age);
  //person.sort((person1 , person2) => person1.role.compareTo(person2.role));
  person.sort((person1, person2) {
    if (person1.getRoleWeight() - person2.getRoleWeight() != 0) {
      return person1.getRoleWeight().compareTo(person2.getRoleWeight());
    } else {
      return person1.age.compareTo(person2.age);
    }
  });

  person.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  String role;
  int age;

  Person(this.role, this.age);

  int getRoleWeight() {
    switch (role) {
      case 'Merchant':
        return 1;
        break;

      case 'Admin':
        return 2;
        break;

      default:
        return 3;
    }
  }
}
