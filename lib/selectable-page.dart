import 'package:flutter/material.dart';

class SelectablePage extends StatefulWidget {
  SelectablePage({Key key}) : super(key: key);

  @override
  _SelectablePageState createState() => _SelectablePageState();
}

class _SelectablePageState extends State<SelectablePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SelectableText(
            'text hooli'
          ),
        ),
      ),
    );
  }
}