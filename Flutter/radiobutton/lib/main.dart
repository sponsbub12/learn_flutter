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

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1 (int value) => setState(() => _value1 = value);
  void _setValue2 (int value) => setState(() => _value2 = value);

  Widget makeRadios(){
    List<Widget> list = new List();

    for(int i = 0;i < 3;i++){
      list.add(new Radio(
          value: i,
          groupValue: _value1,
          onChanged: _setValue1
      ));
    }
    //membuat column baru yang memiliki isi dari List.
    Column column = new Column(children: list,);
    //mengembalikan apa yang ada didalam column
    return column;
  }

  Widget makeRadiosTile(){
    List<Widget> list = new List();
    for(int i = 0;i < 3;i++){
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: new Text('Item $i'),
        subtitle: new Text('sub title'),
      ));
      }
    Column column = new Column(children: list,);

    return column;
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
              //widget didalam widget.
              makeRadios(),
              makeRadiosTile(),
            ],
          ),
        ),
      ),
    );
  }

}