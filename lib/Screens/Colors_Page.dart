import 'package:flutter/material.dart';
import 'package:toku/Components/List_Item.dart';
import 'package:toku/Models/Item.dart';

class Colors_Page extends StatelessWidget {
  const Colors_Page({super.key});
  final List<Item> family_members_List = const [
    Item(
      image: 'assets/images/colors/color_white.png',
      jpName: ' White ',
      enName: ' "Shiro" ',
      sound: 'sounds/colors/white.wav',
    ),
    Item(
      image: 'assets/images/colors/color_black.png',
      jpName: ' Black ',
      enName: ' "Burakku" ',
      sound: 'sounds/colors/black.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      jpName: ' Chairo ',
      enName: ' "Brown" ',
      sound: 'sounds/colors/brown.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: ' Hokorippoi kiiro ',
      enName: ' "Dusty Yellow" ',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      jpName: ' Gurē ',
      enName: ' "Gray" ',
      sound: 'sounds/colors/gray.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: ' "Green" ',
      sound: 'sounds/colors/green.wav',
    ),
    Item(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: ' "Red" ',
        sound: 'sounds/colors/red.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: ' "Yellow" ',
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xffF844BAD),
      ),
      body: ListView.builder(
        itemCount: family_members_List.length,
        itemBuilder: (context, index) {
          return List_Item(
            item: family_members_List[index],
          );
        },
      ),
    );
  }
}
