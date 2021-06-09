import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

//anggap myapp seperti orang
class MyApp extends StatefulWidget {
  //membuat state baru dari class _State
  //dimana class MyApp menggunakan class _State
  @override
  _State createState() => new _State();
}

enum Answer { YES, NO, MAYBE }

//anggap _State seperti baju
class _State extends State<MyApp> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch (
    await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text('Do you like flutter?'),
         children: [
           new SimpleDialogOption(child: new Text('Yes'), onPressed: () {Navigator.pop(context,Answer.YES);},),
           new SimpleDialogOption(child: new Text('No'), onPressed: () {Navigator.pop(context,Answer.NO);},),
           new SimpleDialogOption(child: new Text('Maybe'), onPressed: () {Navigator.pop(context,Answer.MAYBE);},),
         ],
        )
      )
    ){
      case Answer.YES:
        _setValue('YES');
        break;
      case Answer.NO:
        _setValue('NO');
        break;
      case Answer.MAYBE:
        _setValue('MAYBE');
    }
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
              new Text('Simple Dialog'),
              new ElevatedButton(onPressed: _askUser, child: new Text('Show DIalog')),
              new Text(_value)
            ],
          ),
        ),
      ),
    );
  }

}