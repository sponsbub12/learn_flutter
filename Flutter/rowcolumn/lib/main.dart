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

  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

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
              new Text('Please log in first.'),
              new Row(
                children: [
                  new Text('Username '),
                  new Expanded(child: new TextField(controller: _username,))
                ],
              ),
              new Row(
                children: [
                  new Text('Password '),
                  new Expanded(child: new TextField(controller: _password,obscureText: true,))
                ],
              ),
              new Padding(
                  padding: new EdgeInsets.all(12.0),
                child: new ElevatedButton(onPressed: () => print('Login : ${_username.text}\n${_password.text}'), child: new Text('Log in')),
              )
            ],
          ),
        ),
      ),
    );
  }

}