import 'package:flutter/material.dart';
import 'package:ramadan/model/model.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesItems extends StatelessWidget {
  const PhrasesItems({super.key, required this.Item, required this.color});
  final Model Item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color : color,
      height: 100,
      child: Row(
        children: [
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Item.jpname,style: const TextStyle(color: Colors.white,fontSize: 20),),
                Text(Item.enname,style: const TextStyle(color: Colors.white,fontSize: 20),)
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(onPressed: (){
            final player= AudioPlayer();
            player.play(AssetSource(Item.sound));
          }, icon: const Icon(Icons.play_arrow,size: 27,color: Colors.white,))
        ],
      ),

    );
  }
}