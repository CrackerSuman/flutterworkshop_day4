import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Music App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {},
          ),
        ],
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void playMusic(int soundNode){
    final AudioCache player = AudioCache();
    player.play('sound$soundNode.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FlatButton(
          child: Text('Sa',),
          padding: EdgeInsets.all(15),
          color: Colors.red,
          onPressed: () {
             playMusic(1);
          },
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.yellow,
          onPressed: () {
           playMusic(2);
          },
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.blue,
          onPressed: () {},
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.orange,
          onPressed: () {
             playMusic(3);
          },
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.deepOrange,
          onPressed: () {
             playMusic(4);
          },
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.indigo,
          onPressed: () {
             playMusic(5);
          },
        ),
         FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.pink,
          onPressed: () {
             playMusic(6);
          },
        ),
           FlatButton(
          padding: EdgeInsets.all(15),
          color: Colors.pink,
          onPressed: () {
             playMusic(7);
          },
        ),
     
      ],
    );
  }
}
