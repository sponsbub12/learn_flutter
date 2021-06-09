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

  void _onChanged1 (bool value) => setState(() => _value1 = value);
  void _onChanged2 (bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Switches'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Switch(
                  value: _value1,
                  onChanged: _onChanged1
              ),
              new SwitchListTile(
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text(
                    'Hello World',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}