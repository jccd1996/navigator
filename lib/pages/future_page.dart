import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futuros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: testFuturoIntroduccion,
              child: Text('Iniciar futureTest'),
            ),
            RaisedButton(
              onPressed: testFuturoIntermedio,
              child: Text('Iniciar futureTest'),
            ),
          ],
        ),
      ),
    );
  }

  void testFuturoIntroduccion() async {
    print('Iniciando futureTest');
    await Future(() {
      print('Ejecutando futuro');
    }).then((value) => print('Terminando proceso de futuro'));
    print('Finalizando futureTest');
  }

  void testFuturoIntermedio() async {
    methodA();
    await methodB();
    await methodC('testFuturoIntermedio');
    methodD();
  }

  methodA() {
    print('A');
  }

  methodB() async {
    print('B inicia');
    await methodC('B');
    print('B termina');
  }

  methodC(String from) async {
    print('C inicia desde $from');
    await Future(() {
      print('C corriendo Future desde $from');
    }).then((_) {
      print('C terminando el Future desde $from');
    });
    print('C finalizando desde $from');
  }

  methodD() {
    print('D');
  }
}
