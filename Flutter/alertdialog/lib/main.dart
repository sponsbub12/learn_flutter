import 'package:flutter/material.dart';
import 'dart:async';

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

  Future _showAlertDialog(BuildContext context , String message)async{
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text(message),
          actions: [
            //kita dapat bebas untuk memodifikasi function onpressed misalnya
            //menjadi refresh data atau lain sebagainya.
            new FlatButton(onPressed: () =>  Navigator.pop(context), child: new Text('Ok'))
          ],
        )
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
              new Text('Dialog'),
              new ElevatedButton(onPressed: () =>  _showAlertDialog(context,'Hello i am Edward'), child: new Text('Open Dialog'))
            ],
          ),
        ),
      ),
    );
  }

}