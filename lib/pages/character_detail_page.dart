import 'package:flutter/material.dart';
import 'package:navigator/models/character_response.dart';

class CharacterDetailPage extends StatefulWidget {
  final CharacterResponse character;

  CharacterDetailPage({this.character});

  @override
  _CharacterDetailPageState createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image.network(
            widget.character.image,
            width: double.infinity,
            height: 300.0,
          ),
          Text(widget.character.name),
        ],
      ),
    );
  }
}
