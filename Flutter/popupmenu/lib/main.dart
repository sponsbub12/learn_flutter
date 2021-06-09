import 'package:flutter/cupertino.dart';
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
enum Animals {Cat, Dog, Bird, Turtle, Hamster}
//anggap _State seperti baju
class _State extends State<MyApp>{

  Animals _selected = Animals.Cat;
  String _value = 'Make Selection';
  List<PopupMenuEntry<Animals>> _items = new List<PopupMenuEntry<Animals>>();

  @override
  void initState() {
    //for untuk setiap Animals didalam value Animals
    //akan membuat item didalam popupmenu dimana text yang tersedia merupakan value dari Animals.
    for(Animals animal in Animals.values){
      _items.add(new PopupMenuItem(
          child: new Text(_getDisplay(animal)),
          value: animal,
        )
      );
    }
  }

  void _onSelected(Animals animal){
    setState(() {
      //ketika diselect akan mengganti value sesuai apa dengna yang di select
      _selected = animal;
      _value = 'You selected ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal){
    //mengambil animals sesuai dengan index
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
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
              new Container(
                padding: EdgeInsets.all(5.0),
                child: new Text(_value),
              ),
              new PopupMenuButton<Animals>(
                  child: new Icon(Icons.input),
                  initialValue: Animals.Cat,
                  onSelected: _onSelected,
                  itemBuilder: (BuildContext context){
                    return _items;
                  },
              )
            ],
          ),
        ),
      ),
    );
  }


}