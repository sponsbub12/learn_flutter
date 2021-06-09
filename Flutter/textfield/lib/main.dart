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

  void _onChanged(String input){
    //melakukan setState untuk variable text yang akan diisi dengan variable input
    //yang ada pada fungsi onchanged
      setState(() => _value = 'Changed : $input');
  }

  void _onSubmit(String input){
    //melakukan setState untuk variable text yang akan diisi dengan variable input
    //yang ada pada fungsi onsubmit
      setState(() => _value = 'Submit : $input');
  }

  Widget _raiseButton(){
    var button = new RaisedButton(onPressed: () =>  _onSubmit(_value),child: new Text('Submit'),
    );
    return button;
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
              new Text(_value),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Hello',
                  hintText: 'Say something..',
                  icon: new Icon(Icons.people_rounded),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                //ketika text didalam textfield berganti
                onChanged: _onChanged,
                //ketika text didalam textfield disubmit
                 onSubmitted: _onSubmit,
              ),
              _raiseButton(),
            ],
          ),
        ),
      ),
    );
  }

}