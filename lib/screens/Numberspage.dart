import 'package:flutter/material.dart';
import 'package:ramadan/componants/pagesitems.dart';
import 'package:ramadan/model/model.dart';

class Numbrespage extends StatelessWidget {
  const Numbrespage({super.key});
   final List<Model> number = const [
    Model(
        enname: 'One',
        image: 'assets/images/numbers/number_one.png',
        jpname: 'ichi',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Model(
        enname: 'Two',
        image: 'assets/images/numbers/number_two.png',
        jpname: 'ni',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Model(
        enname: 'Three',
        image: 'assets/images/numbers/number_three.png',
        jpname: 'san',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Model(
        enname: 'Four',
        image: 'assets/images/numbers/number_four.png',
        jpname: 'yon',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Model(
        enname: 'Five',
        image: 'assets/images/numbers/number_five.png',
        jpname: 'go',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Model(
        enname: 'Six',
        image: 'assets/images/numbers/number_six.png',
        jpname: 'roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Model(
        enname: 'Seven',
        image: 'assets/images/numbers/number_seven.png',
        jpname: 'shichi',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Model(
        enname: 'Eight',
        image: 'assets/images/numbers/number_eight.png',
        jpname: 'hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Model(
        enname: 'Nine',
        image: 'assets/images/numbers/number_nine.png',
        jpname: 'kyuu',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Model(
        enname: 'Ten',
        image: 'assets/images/numbers/number_ten.png',
        jpname: 'juu',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463126),
        title: const Text(
          'Numbers Page',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return PageItems(
            item: number[index],
            color: Colors.orange,
          );
        },
      ),
    );
  }
}

