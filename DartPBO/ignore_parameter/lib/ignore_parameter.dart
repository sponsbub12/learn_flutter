class Person{
  String name;
  Function(String name) doingHobby;

  Person(this.name, {this.doingHobby});

  void takeRest(){
    if(doingHobby != null){
      doingHobby(name);
    }
  }
}