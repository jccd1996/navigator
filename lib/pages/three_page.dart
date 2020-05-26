import 'package:flutter/material.dart';
import 'package:navigator/pages/home_page.dart';

class ThreePage extends StatefulWidget {
  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tercera pagina'),
      ),
      body: Center(
        child: Text('Tercera pagina'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
              (route) => false);
        },
      ),
    );
  }
}
