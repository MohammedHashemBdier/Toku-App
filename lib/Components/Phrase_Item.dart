import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/Models/Phrase.dart';

class Phrase_Item extends StatelessWidget {
  const Phrase_Item({
    super.key,
    required this.phrase,
  });
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:10),
      height: 125,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: TextStyle(fontSize: 20, color: Color(0xff50AFD5)),
              ),
              Text('\n'),
              Text(
                phrase.enName,
                style: TextStyle(fontSize: 10, color: Color(0xff0000000)),
              ),
            ],
          ),
          Spacer(
            flex: 50,
          ),
          IconButton(
            onPressed: () {
              try {
                final player = AudioPlayer();
                player.play(AssetSource(phrase.sound));
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Color(0xff50AFD5),
              size: 40,
            ),
          ),
          Spacer(
            flex: 10,
          )
        ],
      ),
    );
  }
}
