import 'dart:io';

void main(List<String> arguments) {
  List<int> _myList = [1,2,3,4,5,6,7];
  List<String> _list = [];

  // _myList.forEach((bilangan){
  //   _list.add('Angka '+bilangan.toString());
  // });

  //map mengembalikan ITERABLE bukan LIST. maka harus di convert ke LIST
  //ketika ingin disimpan ke list.
  _list = _myList.map((number) => "Angka "+ number.toString()).toList();

  _list.forEach((string){
    print(string);
  });

}

void basicList(){
  List<int> _myList = [];
  List<int> _myList2 = [1,2,3];
  _myList2[0] = 10;
  int x = _myList2[0];
  print(x);
}

void forList(){

List<int> _myList = [];
List<int> _myList2 = [1,2,3];

for(int i = 0;i<_myList2.length;i++){
    print(_myList2[i]);
  }
  
for(int bilangan in _myList2){
  print(bilangan);
  }

_myList2.forEach((bilangan){
   print(bilangan);
 });

}

void list_set(){
  List<int> _myList = [1,2,3,4,5,6,7];
  List<int> _myList2 = [2,3,4,5,6];

   // _myList.add(0);
  _myList.addAll(_myList2);
  // _myList.insert(1,1);
  // _myList.insertAll(3,[3,4,5,6,6]);
  // _myList.remove(3);
  _myList.removeLast();
  // _myList.removeAt(2);
  // _myList.removeRange(0,2);
  // _myList.removeWhere((number) => number % 2 != 0);
  // if(_myList.contains(6)){
  //   print("TRUE");
  // }
  // _myList2 = _myList.sublist(1);
  // _myList2.clear();

  // a = 4 b = 5
  // _myList2.sort((a,b) => b - a);

  // if(_myList2.every((number) => number % 2 != 0)){
  //   print('Semua ganjil');
  // }else{
  //   print('Tidak semua ganjil');
  // }

  // if(_myList2.isNotEmpty){
  //   print("Tidak Kosong");
  // }
  Set<int> set;
  set = _myList2.toSet();
  print(_myList2);
  print(_myList);
  print("SET : $set");
}

void mappinng(){

}