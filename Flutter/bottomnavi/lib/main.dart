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

  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  //initState fungsinya untuk melakukan hal-
  //-sebelum hal lain di load pada state pada suatu class
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.mail), title: new Text('Mail')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.explore), title: new Text('Explore')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile')));
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
              new Text(_value)
            ],
          ),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _items,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.green,
        currentIndex: _index,
        onTap: (int item){
            setState(() {
              _index = item;
              _value = 'current value is :${_index.toString()}';
            });
          },
      ),
    );
  }
}