import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

//anggap myapp seperti orang
class MyApp extends StatefulWidget{
  //membuat state baru dari class _State
  //dimana class MyApp menggunakan class _State
  @override
  _State createState() => new _State();
}

//anggap _State seperti baju
class _State extends State<MyApp>{
  String _value = 'Hello World';
  int angka = 0;
  void _onPressed(String value){
    //setState -> mengganti state dari variable _value
    setState(() {
      _value = value;
    });
  }

  void add(){
    setState(() {
      angka++;
    });
  }
  void subtract(){
    setState(() {
      angka--;
    });
  }
  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              //() => merupakan fungsi anonymous berupa object, karena fungsi di dart merupakan object.
              new RaisedButton(onPressed: () =>  _onPressed('Hello Titi'), child: new Text('Click me')),

              new Text('Angka =${angka}'),
              new IconButton(icon: new Icon(Icons.add), onPressed: add),
              new IconButton(icon: new Icon(Icons.remove),onPressed:  subtract),
            ],
          ),
        ),
      ),
    );
  }

}