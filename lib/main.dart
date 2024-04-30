import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(button());
}

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buttonpage(),
    );
  }
}

class buttonpage extends StatefulWidget {
  const buttonpage({super.key});

  @override
  State<buttonpage> createState() => _buttonpageState();
}

class _buttonpageState extends State<buttonpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Button Icon',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 380,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated'),
                    ),
                    SizedBox(height: 10,),
                    FilledButton.tonal(onPressed: (){

                    }, child: Text('Filled Tonel'),),
                    SizedBox(height: 10,),
                    FilledButton(onPressed: () {

                    }, child: Text('Filled')),
                    SizedBox(height: 10,),
                    OutlinedButton(onPressed:() {

                    }, child: Text('Outlined')),
                    SizedBox(height: 10,),
                    TextButton(onPressed:() {

                    }, child: Text('Text')),
                    SizedBox(height: 10,),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.settings)),
                    SizedBox(height: 10,),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text('Add'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    FilledButton.tonal(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add'),
                      ],
                    )),
                    SizedBox(height: 10,),
                    FilledButton(onPressed: () {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add'),
                      ],
                    )),
                    SizedBox(height: 10,),
                    OutlinedButton(onPressed:() {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add'),
                      ],
                    )),
                    SizedBox(height: 10,),
                    TextButton(onPressed:() {

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add'),
                      ],
                    )),
                    SizedBox(height: 10,),
                    IconButton(onPressed: () {

                    }, icon: Text('Icon',style: TextStyle(fontSize: 20,),)),


                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated'),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Filled'),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Filled tonal'),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('outline'),
                    ),
                    SizedBox(height: 10,),
                    TextButton(onPressed: () {

                    }, child: Text('Text')),
                    SizedBox(height: 10,),
                    IconButton(onPressed: () {

                    }, icon: Text('Icons',style: TextStyle(fontSize: 20),),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
