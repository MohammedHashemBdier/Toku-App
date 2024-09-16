import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';
import 'package:audioplayers/audioplayers.dart';

class List_Item extends StatelessWidget {
  const List_Item({super.key, required this.item,});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: Row(
        children: [
          Image.asset(item.image),
          Spacer(
            flex: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(fontSize: 30, color: Color(0xff2E1C1C)),
              ),
              Text(
                item.enName,
                style: TextStyle(fontSize: 20, color: Color(0xff2E1C1C)),
              ),
            ],
          ),
          Spacer(
            flex: 50,
          ), 
          IconButton(
            onPressed: () {
              try
              {
                              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
              }
              catch(ex)
              {
                print(ex);
              }
            },  
            icon: Icon(
              Icons.play_arrow,
              color: Color(0xff2E1C1C),
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
