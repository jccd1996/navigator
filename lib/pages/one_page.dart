import 'package:flutter/material.dart';
import 'package:navigator/pages/two_page.dart';

class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera pagina'),
      ),
      body: Center(
        child: Text('Primer pagina'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => TwoPage(),
            ),
          );
        },
      ),
    );
  }
}
