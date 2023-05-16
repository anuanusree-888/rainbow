import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Rainbow extends StatefulWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  State<Rainbow> createState() => _RainbowState();
}

class _RainbowState extends State<Rainbow> {
  void playsound(int soundNumber){
    final player=AudioPlayer();
    player.play(AssetSource('aud/note$soundNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Xylophone')),
      ),
      body: Column(
          children: [
            buildExpanded(Colors.red,1),
            buildExpanded(Colors.orange,2),
            buildExpanded(Colors.yellow,3),
            buildExpanded(Colors.green,4),
            buildExpanded(Colors.blue,5),
            buildExpanded(Colors.indigo,6),
            buildExpanded(Colors.purple,7)
          ]),
    );
  }

        Expanded buildExpanded(Color keycolor,int sound)=>Expanded(
            child: Container(
              color:keycolor,
              child: Center(child: TextButton(onPressed:(){playsound(sound);}, child: Text('audio')),
            ),
            ));
  }

