import 'package:flutter/material.dart';
import 'package:ramadan/componants/homeIntems.dart';
import 'package:ramadan/screens/Colors.dart';
import 'package:ramadan/screens/Familymemberspage.dart';
import 'package:ramadan/screens/Numberspage.dart';
import 'package:ramadan/screens/Phrases.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:  const Color(0xffFFFDE4),
  appBar: AppBar(
   backgroundColor: const Color(0xff463126) ,
    title: const Text('Learning app' ,
    style: TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white
    ),),

  ),
  body: Column(
    children: [
      Homeitems(name: 'Numbers', color:  Colors.orange, ontap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return const Numbrespage();
        }));
      }),
      Homeitems(name: 'Family Members', color: const Color(0xff5D8B3E) , ontap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return const FamilyMemebers();
        }));
  }),
      Homeitems(name: 'Colors', color: const Color(0xff854CAE)  , ontap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return const ColorsPage();
        }));
   } ),
      Homeitems(name: 'Phrases', color: const Color(0xff51B0D5), ontap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return const PhrasesPage();
        }));
  }),

    ],
  ),
    );
  }
}