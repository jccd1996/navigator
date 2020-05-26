import 'package:flutter/material.dart';

class ReturnDataPage extends StatefulWidget {
  @override
  _ReturnDataPageState createState() => _ReturnDataPageState();
}

class _ReturnDataPageState extends State<ReturnDataPage> {
  var _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              hintText: 'Escribe tu nombre',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context, _textController.text);
        },
      ),
    );
  }
}
