void main(List<String> arguments) async {
  var person = Person();

  print('job 1');
  print('job 2');
  // await person.getDataAsync();
  person.getDataAsync().then((_){
    print('Job 3 '+person.name);
  });
  // print('job 3 '+person.name);
  print('job 4');
}

class Person{
  String name = 'default name';

  void getData(){
    name = 'Joko'; //Misal ambil data dari DB (3 detik)
    print('get data [done]');
  }

//void dapat diganti dengan tipe data.
//future = dimasa yang akan datang
  Future<void> getDataAsync() async{
    Future.delayed(Duration(seconds: 3));
    name = 'Joko'; //Misal ambil data dari DB (3 detik)
    print('get data [done]');
  }
}
