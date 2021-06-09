//top level
const pi = 3.14;
void main(List<String> arguments) {
  //final int x = 5;
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);
  print(identical(a,b));
}

class RegularClass{
  final int number;
  //must be static
  //static -> menyatakan variable ini milik class tersebut (bukan milik object)
  static const myConst = 0;
  RegularClass({this.number}){
    //local
    const anotherConst = 2;
    print(anotherConst);
  }
}

//1 tidak akan membuat objek berulang (irit memori)
//2 const dibuat ketika dicompile bukan pada waktu runtime
class ConstClass{
  final int number;
  const ConstClass({this.number});
}