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
  void _onClicked () => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      drawer: new Drawer(child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: [
              new Text('Hello Drawer'),
              // new ElevatedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),)
              new ElevatedButton(onPressed: _onClicked, child: new Text('Get Date'),onLongPress: () => Navigator.pop(context),)
            ],
          ),
        ),
      ),
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