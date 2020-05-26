import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'dash',
                child: Image.asset('assets/dash.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Hola, mi nombre es Dash'),
              ),
              CachedNetworkImage(
                imageUrl:
                    'https://concepto.de/wp-content/uploads/2019/12/paisaje-rural-e1576119288479.jpg',
                imageBuilder: (context, imageProvider) => Container(
                  width: 300,
                  height: 200,
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
