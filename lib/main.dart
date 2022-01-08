import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GUESS THE NUMBER')),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(1.0),
            border: Border.all(width: 15.0, color: Color(0xFFA6F9FB)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1.0),
                offset: const Offset(2.0, 5.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
              )
            ]),
        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(
              'GUESS',
              style: TextStyle(fontSize: 30.0, color: Color(0xFFFDFDFD)),
              textAlign: TextAlign.center,
            ),],
            ),
              Padding(
                padding: const EdgeInsets.only(
                  top:0,
                  right:0,
                  left: 0,
                  bottom: 80,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/guess_logo.png', width: 100.0),

                    /*TextButton(onPressed: () {}, child: Text("THE NUMBER",),
                    )*/
                    Text(
                      'THE NUMBER',
                      style: TextStyle(fontSize: 15.0, color: Color(0xFFFDFDFD)),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
              ElevatedButton(

                child:Text('GUESS',
                  style: TextStyle(fontSize: 30.0, color: Color(0xFEEDD300)),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
