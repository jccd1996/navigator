import 'package:flutter/material.dart';

class ArrowClosePage extends StatefulWidget {
  @override
  _ArrowClosePageState createState() => _ArrowClosePageState();
}

class _ArrowClosePageState extends State<ArrowClosePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Close'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cerrar'),
          ),
        ),
      ),
    );
  }
}
