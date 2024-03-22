import 'package:flutter/material.dart';
import 'package:ramadan/model/model.dart';
import 'package:audioplayers/audioplayers.dart';

class PageItems extends StatelessWidget {
  const PageItems({super.key, required this.item, required this.color});
  final Model item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color : color,
      height: 100,
      child: Row(
        children: [
          Container(
            color:const Color(0xffFFFDE4),
            child: item.image != null // Check if image is not null
                ? Image.asset(item.image!) // Use the image if not null
                : const Placeholder(), 
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpname,style: const TextStyle(color: Colors.white,fontSize: 20),),
                Text(item.enname,style: const TextStyle(color: Colors.white,fontSize: 20),)
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(onPressed: (){
            final player= AudioPlayer();
            player.play(AssetSource(item.sound));
          }, icon: const Icon(Icons.play_arrow,size: 27,color: Colors.white,))
        ],
      ),

    );
  }
}