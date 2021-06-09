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

  int _value = 0;

  void _add () => setState(() => _value++);
  void _remove () => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
        backgroundColor: Colors.green,
        actions: [
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _remove),
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('$_value', style: new TextStyle(fontWeight: FontWeight.bold , fontSize: 37.0),)
            ],
          ),
        ),
      ),
    );
  }

}