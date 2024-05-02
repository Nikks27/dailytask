import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(clock());
}
class clock extends StatelessWidget {
  const clock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Alaram(),
    );
  }
}
class Alaram extends StatefulWidget {
  const Alaram({super.key});

  @override
  State<Alaram> createState() => _AlaramState();
}

class _AlaramState extends State<Alaram> {
  @override
  Widget build(BuildContext context) {

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime=DateTime.now();
        if(dateTime.hour>11)
        {
          check='AM';
        }
        else
        {
          check='PM';
        }
        switch(dateTime.weekday)
        {
          case 1 : day = 'Monday';
          break;
          case 2 : day = 'Tuesday';
          break;
          case 3 : day = 'Wednesday';
          break;
          case 4 : day = 'Thursday';
          break;
          case 5 : day = 'Friday';
          break;
          case 6 : day = 'Saturday';
          break;
          case 7 : day = 'Sunday';
          break;
        }
      });
    });
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 867,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://img.freepik.com/free-vector/cartoon-night-nature-landscape-full-moon-shining-sky-with-stars-field-with-pond-conifer-trees-rocks-dark-heaven-with-moonlight-romantic-fantasy-background-midnight-twilight-vector-view_107791-10119.jpg',
                  ),
                )
            ),
            child: Column(

              children: [
                SizedBox(height: 70,),
                Text('Alarm',style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.white),),
                SizedBox(height: 150,),
                Transform.rotate(angle: pi-10,child: Icon(Icons.notifications,size: 50,color: Colors.white,),),
                SizedBox(height: 100,),
                Text('${dateTime.day} : ${dateTime.month} : ${dateTime.year}',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white),),
                SizedBox(height: 5,),
                Text('${dateTime.hour} : ${dateTime.minute} : ${dateTime.second}',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white),),
                Text(day,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
DateTime dateTime=DateTime.now();
String check='';
String day='';


