import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(BipBip());

class BipBip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Click to play',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      color: Colors.purple,
                      onPressed: () {
                        final player = AudioCache();
                        player.play('001.mp3');
                      },
                      child: Text(
                        'Tututut',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        final player = AudioCache();
                        player.play('002.mp3');
                      },
                      child: Text(
                        'Twoktwoktwok',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    FlatButton(
                      color: Colors.pink,
                      onPressed: () {
                        final player = AudioCache();
                        player.play('003.mp3');
                      },
                      child: Text(
                        'twootowooot',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
