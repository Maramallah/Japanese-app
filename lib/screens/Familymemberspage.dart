import 'package:flutter/material.dart';
import 'package:ramadan/componants/pagesitems.dart';
import 'package:ramadan/model/model.dart';

class FamilyMemebers extends StatelessWidget {
  const FamilyMemebers({super.key});
  final List<Model> familyMembers = const [
    Model(
        enname: 'Father',
        image: 'assets/images/family_members/family_father.png',
        jpname: 'Chichioya',
        sound: 'sounds/family_members/father.wav'),
    Model(
        enname: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        jpname: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    Model(
        enname: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        jpname: 'Ojiichan',
        sound: 'sounds/family_members/grand father.wav'),
    Model(
        enname: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        jpname: 'Obaasan',
        sound: 'sounds/family_members/grand mother.wav'),
    Model(
        enname: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        jpname: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    Model(
        enname: 'Son',
        image: 'assets/images/family_members/family_son.png',
        jpname: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
    Model(
        enname: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpname: 'Otouto',
        sound: 'sounds/family_members/younger brohter.wav'),
    Model(
        enname: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        jpname: 'Ani',
        sound: 'sounds/family_members/older bother.wav'),
    Model(
        enname: 'Younger Sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpname: 'Imouto',
        sound: 'sounds/family_members/younger sister.wav'),
    Model(
        enname: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        jpname: 'Ane',
        sound: 'sounds/family_members/older sister.wav'),
   
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463126),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount:familyMembers.length,
        itemBuilder: (context, index) {
          return PageItems(
            item: familyMembers[index],
            color: const Color (0xff527C30),
          );
        },
      ),
    );
  }
}