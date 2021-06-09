class Person{
  String name;
  int age;
  //static member dari sebuah class bisa field / method
  //menjadi milik dari class tsb bukan milik objek
  static int maxAge = 150;

  Person(this.name , int age){
    this.age = (age>150) ? 150 : age;
  }
}