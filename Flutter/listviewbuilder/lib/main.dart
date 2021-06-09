import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';
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
  //jika tidak dibuat generic maka akana menjadi dynamic , dynamic <Key , Value>
  Map<String , dynamic> _countries = new Map();

  void _getData() async {
    var url = "http://country.io/names.json";
    var response = await http.get(url);
    if(response.statusCode == 200){
      setState(() => _countries = jsonDecode(response.body));
      print('lodaded ${_countries.length}');
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
              new Text(
                  'Countries',
                  style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Expanded(child: Container(
                child: new ListView.builder(
                  //expanded harus mengetahui banyaknya list yang akan di build
                  //untuk menyiapkan size screen yang diperlukan
                     itemCount: _countries.length,
                     itemBuilder: (BuildContext context , int index){
                     //merujuk ke item saat ini sesuai dengan KEY nya
                      String key = _countries.keys.elementAt(index);
                      return new Row(
                        children: [
                          //key
                          new Text('${key} : '),
                          //value merujuk ke _countries dan sebanyak key yang ada
                          new Text(_countries[key])
                        ],
                      );
                    },
                  ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }

  //apa yang akan dilakukan aplikasi pada awal state.
  @override
  void initState() {
    _getData();
  }
}