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

  int counter = 0;
  List<Widget> _list = new List<Widget>();
  @override
  void initState() {
    for (int i = 0 ; i < 5 ; i ++){
      Widget child = _newItem(i);
      _list.add(child);
    }
  }

  void _onClicked(){
    Widget child = _newItem(counter);
    setState(() => _list.add(child));
  }

  Widget _newItem(int i){
    //anggap key disini untuk identifier
    //utk merujuk ke objek tersebut.
    Key key = new Key('item_${i}');
    Container child = new Container(
      key: key,
      padding: EdgeInsets.all(10.0),
      child: new Chip(
          label: new Text('${i} Name here.'),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: 'Delete item',
        onDeleted: () =>  _removeItem(key),
        avatar: new CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: new Text('${i.toString()}'),
        ),
      ),
    );
    counter++;
    return child;
  }

  void _removeItem(Key key){
    for(int i = 0; i <_list.length; i++){
      Widget child = _list.elementAt(i);
      if(child.key == key){
        setState(() => _list.removeAt(i));
        print('Removing item ${key.toString()}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _onClicked,
          child: new Icon(Icons.add),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: _list
          ),
        ),
      ),
    );
  }


}