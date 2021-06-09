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

  String _value = '';

  void _onClick (String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      persistentFooterButtons: [
        new IconButton(icon: new Icon(Icons.home), onPressed: () =>  _onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.mail), onPressed: () =>  _onClick('Button 2')),
        new IconButton(icon: new Icon(Icons.explore), onPressed: () =>  _onClick('Button 3')),
        new IconButton(icon: new Icon(Icons.person), onPressed: () =>  _onClick('Button 4')),
      ],
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value)
            ],
          ),
        ),
      ),
    );
  }

}