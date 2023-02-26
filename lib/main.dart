import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';




void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
       body: Myapp(),
    ),

  )
  );
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    void sound(int s) {
      final player=AudioCache();
      player.play('assets_note$s.wav');


    }
    Expanded ok(int sn, Color c,String sr){
      return Expanded(

        child:ElevatedButton(
          child: Text(sr),
          style: TextButton.styleFrom(backgroundColor: c),
          onPressed: () {
            sound(sn);
          },

        ),
      );
    }

    return SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,


            children: [

              ok(1, Colors.cyan, ' '),
              ok(2, Colors.red, ' '),
              ok(3, Colors.blueGrey, ' '),
              ok(4, Colors.blue, ' '),
              ok(5, Colors.pink, ' '),
              ok(6, Colors.grey, ' '),
              ok(7, Colors.teal, ' '),

             ]
          ),
        );


  }
}

