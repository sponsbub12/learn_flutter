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

  void _showBottom(){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context){
          return new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text('some info here ', style: new TextStyle(color: Colors.blue , fontWeight: FontWeight.bold),),
                new ElevatedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'))
              ],
            ),
          );
        }
    );
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
              new ElevatedButton(onPressed: _showBottom, child: new Text('Open'))
            ],
          ),
        ),
      ),
    );
  }

}