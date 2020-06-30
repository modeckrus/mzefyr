import 'package:flutter/material.dart';
import 'package:mzefyr/reading-page.dart';
import 'package:mzefyr/selectable-page.dart';

import 'editor-page.dart';


void main() {
  runApp(QuickStartApp());
}

class QuickStartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Start',
      home: HomePage(),
      theme: ThemeData.dark(),
      routes: {
        "/editor": (context) => EditorPage(),
        '/reading': (context) => ReadingPage(),
        '/selectable':(context) => SelectablePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Quick Start")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            FlatButton(
              child: Text("Open editor", style: TextStyle(
                fontSize: 24
              ),),
              onPressed: () => navigator.pushNamed("/editor"),
            ),
            FlatButton(
              child: Text('Reading page', style: TextStyle(
                fontSize: 24,
              ),),
              onPressed: (){
                navigator.pushNamed('/reading');
              },
            ),
            FlatButton(
              child: Text('Selectable', style: TextStyle(
                fontSize: 24,
              ),),
              onPressed: (){
                navigator.pushNamed('/selectable');
              },
            ),
          ],
        ),
      ),
    );
  }
}