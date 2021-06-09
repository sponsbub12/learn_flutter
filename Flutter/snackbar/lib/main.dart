import 'package:flutter/material.dart';

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

//anggap _State seperti baju
class _State extends State<MyApp> {
  String _value = '';
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  void _showBar(String message) {
    //mengambil state dari scaffold saat ini yang ada pada widget.
    _scaffoldState.currentState
        .showSnackBar(new SnackBar(content: new Text(message)));
  }

  //mengambil value onChanged dari textfield
  void _onChanged(String value) {
    setState(() => _value = value);
  }

  @override
  Widget build(BuildContext context) {
    //key pada widget adalah key utk merujuk ke widget yang sebenarnya
    //Scafold merupakan struktur material dari aplikasi yang ingin dibuat
    return new Scaffold(
      //kelas scaffold yang merujuk ke state scaffoldnya
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                    labelText: 'Name',
                    hintText: 'fill your name',
                    icon: new Icon(Icons.person)),
                onChanged: _onChanged,
                maxLength: 10,
              ),
              new ElevatedButton(
                  onPressed: () =>  _showBar('Hello ${_value}'), child: new Text('Show Snackbar'))
            ],
          ),
        ),
      ),
    );
  }
}
