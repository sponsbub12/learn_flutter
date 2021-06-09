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

  double _value = 0.0;

  void _onChanged (double value) => setState(() => _value = value);

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
              new Slider(value: _value, onChanged: _onChanged),
              new Container(
                padding: EdgeInsets.all(32.0),
                child: new LinearProgressIndicator(
                  value: _value,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              new Container(
                padding: EdgeInsets.all(32.0),
                child: new CircularProgressIndicator(
                  value: _value,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}