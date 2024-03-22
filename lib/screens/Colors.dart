import 'package:flutter/material.dart';
import 'package:ramadan/componants/pagesitems.dart';
import 'package:ramadan/model/model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Model> colors = const [
    Model(
        enname: 'Red',
        image: 'assets/images/colors/color_red.png',
        jpname: 'Aka',
        sound: 'sounds/colors/red.wav'),
    Model(
        enname: 'Green',
        image: 'assets/images/colors/color_green.png',
        jpname: 'Midori',
        sound: 'sounds/colors/green.wav'),
    Model(
        enname: 'Yellow',
        image: 'assets/images/colors/yellow.png',
        jpname: 'Kiiro',
        sound: 'sounds/colors/yellow.wav'),
    Model(
        enname: 'Brown',
        image: 'assets/images/colors/color_brown.png',
        jpname: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    Model(
        enname: 'White',
        image: 'assets/images/colors/color_white.png',
        jpname: 'Shiro',
        sound: 'sounds/colors/white.wav'),
    Model(
        enname: 'Black',
        image: 'assets/images/colors/color_black.png',
        jpname: 'Kuro',
        sound: 'sounds/colors/black.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463126),
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return PageItems(
            item: colors[index],
            color: const Color(0xff7D3FA2),
          );
        },
      ),
    );
}}