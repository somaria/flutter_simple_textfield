import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyTextInput(),
      ),
    );

class MyTextInput extends StatefulWidget {
  @override
  _MyTextInputState createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  String result = '';

  final controllerTF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input text'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: controllerTF,
                decoration: InputDecoration(hintText: "Type in here"),
                onSubmitted: (String str) {
                  setState(() {
                    result = str;
                    controllerTF.text = '';
                  });
                },
              ),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}
