import 'package:flutter/material.dart';


void main() => runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TextFieldWithicon(),
    );
  }
}


class TextFieldWithicon extends StatelessWidget{
  TextEditingController _cntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('iKh4ever Studio textfield'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: _cntroller,
            decoration: InputDecoration(
              hintText: 'Write Text Here',
              icon: Icon(Icons.pages),
            ),
          ),
        ),
      ),
    );
  }

}
