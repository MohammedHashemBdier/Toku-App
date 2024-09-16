import 'package:flutter/material.dart';
import 'package:toku/Components/Phrase_Item.dart';
import 'package:toku/Models/Phrase.dart';

class Phrases_Page extends StatelessWidget {
  const Phrases_Page({super.key});
 final List<Phrase> phrase_List = const [
  Phrase(
      jpName: ' Kimasu ka ',
      enName: ' "Are you coming" ',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Phrase(
      jpName: ' Go kibun wa ikagadesu ka ',
      enName: ' "How are you feeling" ',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrase(
      jpName: ' Watashi wa anime \n ga daisukidesu ',
      enName: ' "I love anime" ',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrase(
      jpName: ' Watashi wa puroguramingu \n ga daisukidesu ',
      enName: ' "I love programming" ',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Phrase(
      jpName: 'Puroguramingu wa kantandesu',
      enName: ' "Programming is easy" ',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrase(
      jpName: 'Namae wa nandesuka',
      enName: ' "What is your name" ',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrase(
        jpName: 'Doko ni iku no',
        enName: ' "Where are you going" ',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(
        jpName: 'Hai watashi wa kite imasu',
        enName: ' "Yes i am coming" ',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff50AFD5),
      ),
      body: ListView.builder(
        itemCount: phrase_List.length,
        itemBuilder: (context, index) {
          return Phrase_Item(phrase: phrase_List[index] ,);
        },
      ),
    );
  }
}