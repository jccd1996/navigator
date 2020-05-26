import 'package:flutter/material.dart';
import 'package:navigator/pages/three_page.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pagina'),
      ),
      body: Center(
        child: Text('Segunda pagina'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ThreePage(),
            ),
          );
        },
      ),
    );
  }
}
