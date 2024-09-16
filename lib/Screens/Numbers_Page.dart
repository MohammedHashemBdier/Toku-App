import 'package:flutter/material.dart';
import 'package:toku/Components/List_Item.dart';
import 'package:toku/Models/Item.dart';

class Numpers_Page extends StatelessWidget {
  const Numpers_Page({super.key});
  final List<Item> numbers_List = const [
    Item(
      image: 'assets/images/numbers/number_one.png',
      jpName: ' Ichi ',
      enName: ' "One" ',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      jpName: ' Ni ',
      enName: ' "Two" ',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpName: ' San ',
      enName: ' "Three" ',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      jpName: ' Shi ',
      enName: ' "Four" ',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      jpName: ' Go ',
      enName: ' "Five" ',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: ' "Six" ',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: ' "Seven" ',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: ' "Eight" ',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: ' "Nine" ',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: ' "Ten" ',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xffF99430),
      ),
      body: ListView.builder(
        itemCount: numbers_List.length,
        itemBuilder: (context, index) {
          return List_Item(item: numbers_List[index] ,);
        },
      ),
    );
  }
}

//other method  it is a function typ of: List<Item_Number> name is: getLis,  para: List<Number> numbers, return: Item_List;
List<List_Item> getList(List<Item> numbers) {
  List<List_Item> Item_List = [];
  for (int i = 0; i < numbers.length; i++) {
    Item_List.add(List_Item(item: numbers[i] ,
    ));
  }
  return Item_List;
}
