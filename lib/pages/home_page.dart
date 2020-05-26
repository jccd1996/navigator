import 'package:flutter/material.dart';
import 'package:navigator/pages/character_page.dart';
import 'package:navigator/pages/arrow_close_page.dart';
import 'package:navigator/pages/blank_page.dart';
import 'package:navigator/pages/future_page.dart';
import 'package:navigator/pages/one_page.dart';
import 'package:navigator/pages/replace_page.dart';
import 'package:navigator/pages/return_data_page.dart';

import 'hero_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica'),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text('Navigator'),
            children: <Widget>[
              _ButtonOptions(
                  leading: Icon(Icons.open_in_new),
                  title: 'Navegación entre paginas',
                  subtitle: 'Navegación entre 3 paginas con explicación',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => OnePage()));
                  }),
              _ButtonOptions(
                  leading: Icon(Icons.call_made),
                  title: 'Ir a otra pantalla',
                  subtitle: 'Ir a otra pantalla y volver',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => BlankPage()));
                  }),
              _ButtonOptions(
                leading: Icon(Icons.description),
                title: 'Ir a otra pantalla',
                subtitle: 'Ir a otra pantalla y volver con información',
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ReturnDataPage(),
                    ),
                  ).then((value) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(value),
                      ),
                    );
                  });
                },
              ),
              _ButtonOptions(
                leading: Icon(Icons.close),
                title: 'Ir a otra pantalla',
                subtitle:
                    'Ir a otra pantalla y volver oprimiendo back unicamente',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ArrowClosePage(),
                    ),
                  );
                },
              ),
              _ButtonOptions(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child:
                      Hero(tag: 'dash', child: Image.asset('assets/dash.png')),
                ),
                title: 'Ir a otra pantalla',
                subtitle: 'Ir a otra pantalla y volver con animación',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HeroPage(),
                    ),
                  );
                },
              ),
              _ButtonOptions(
                leading: Icon(Icons.arrow_forward),
                title: 'Ir a otra pantalla',
                subtitle: 'Ir a otra pantalla y cerrar la actual',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ReplacePage(),
                    ),
                  );
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Async Dart'),
            children: <Widget>[
              _ButtonOptions(
                leading: Icon(Icons.access_time),
                title: 'Future',
                subtitle: 'Funcionamiento de los Futures',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => FuturePage(),
                    ),
                  );
                },
              ),
              _ButtonOptions(
                leading: Icon(Icons.access_time),
                title: 'Consumo API',
                subtitle: 'Traer datos de internet',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CharacterPage(),
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
//  Scaffold.of(context).showSnackBar(new SnackBar(
//  content: new Text("Sending Message"),
}

class _ButtonOptions extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final GestureTapCallback onTap;

  _ButtonOptions({
    this.title,
    this.subtitle,
    this.leading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        title: Text(title),
        leading: leading,
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
