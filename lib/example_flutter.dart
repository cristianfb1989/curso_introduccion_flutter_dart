import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  String title;
  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('Contenido'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.photo),
        onPressed: null,
      ),
    );
  }
}
