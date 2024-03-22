import 'package:flutter/material.dart';
import 'package:ramadan/componants/phrasesitems.dart';
import 'package:ramadan/model/model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Model> phrase = const [
    Model(
        enname: 'Don\'t forget to subscribe ',
        
        jpname: 'Koudoku o wasurenaide kudasai',
        sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    Model(
        enname: 'I love programming',
        jpname: 'Puroguramingu ga daisuki desu',
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Model(
        enname: 'Programming is easy',
        
        jpname: 'Puroguramingu wa kantan desu',
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Model(
        enname: 'Where are you going?',
       
        jpname: 'Doko e iku no?',
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    Model(
        enname: 'What is your name?',
        jpname: 'Anata no namae wa nan desu ka?',
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    Model(
        enname: 'I love anime',
       
        jpname: 'Anime ga daisuki desu',
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Model(
        enname: 'How are you feeling?',
      
        jpname: 'Kibun wa dou desu ka?',
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Model(
        enname: 'Are you coming?',
      
        jpname: 'Kimasu ka?',
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
   
  ];


 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463126),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return PhrasesItems(
            Item: phrase[index],
            color: const Color(0xff47A5CB),
          );
        },
      ),
    );
  }
}
 