import 'package:flutter/material.dart';
import 'package:toku/Components/List_Item.dart';
import 'package:toku/Models/Item.dart';

class Family_Members_Page extends StatelessWidget {
  const Family_Members_Page({super.key});
  final List<Item> family_members_List = const [
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: ' Ojīsan ',
      enName: ' "Grand Father" ',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: ' Sobo ',
      enName: ' "Grand Mother" ',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_father.png',
      jpName: ' Chichioya ',
      enName: ' "Father" ',
      sound: 'sounds/family_members/father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      jpName: ' Hahaoya ',
      enName: ' "Mother" ',
      sound: 'sounds/family_members/mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: ' Nīsan ',
      enName: ' "Older Brother" ',
      sound: 'sounds/family_members/older bother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: ' "Older Sister" ',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: ' "Son" ',
      sound: 'sounds/family_members/son.wav',
    ),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: ' "Daughter" ',
        sound: 'sounds/family_members/daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: ' "Younger Brohter" ',
        sound: 'sounds/family_members/younger brohter.wav'),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: ' "Younger Sister" ',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff5C8A3D),
      ),
      body: ListView.builder(
        itemCount: family_members_List.length,
        itemBuilder: (context, index) {
          return List_Item(item: family_members_List[index], );
        },
      ),
    );
  }
}