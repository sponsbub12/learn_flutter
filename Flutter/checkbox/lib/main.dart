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

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value)=>setState(() => _value1 = value);

  void _value2Changed(bool value) => setState(() => _value2 = value);

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
              //jika value yang dimasukkan itu sama , maka akan menjadi kesatuan
              new Checkbox(
                  value: _value1,
                  onChanged: _value1Changed
              ),
              new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                title: new Text('Please Check me !'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text('Subtitle'),
                secondary: new Icon(Icons.archive),
                activeColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }

}