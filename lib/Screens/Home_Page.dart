import 'package:flutter/material.dart';
import 'package:toku/Components/Categoty_Item.dart';
import 'package:toku/Screens/Colors_Page.dart';
import 'package:toku/Screens/Family%20Members%20Page.dart';
import 'package:toku/Screens/Numbers_Page.dart';
import 'package:toku/Screens/Phrases_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff483229),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Numpers_Page();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Color(0xffF99430),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Family_Members_Page();
                  },
                ),
              );
            },
            text: 'Family Members',
            color: Color(0xff5C8A3D),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Colors_Page();
                  },
                ),
              );
            }, 
            text: 'Colors',
            color: Color(0xffF844BAD),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Phrases_Page();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: Color(0xff50AFD5),
          ),
        ],
      ),
    );
  }
}
