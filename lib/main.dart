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
        primarySwatch: Colors.pink ,
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
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFF134398),
              //color: Colors.lightBlue.shade100,
              //border: Border.all(width: 5.0, color: Colors.blue),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2.0, 5.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/guess_logo.png',
                      width: 100,
                      height: 100,
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'GUESS',
                        style: TextStyle(
                          color: Color(0xFFFDFDFD),
                          fontSize: 50.0,
                        ),
                      ),
                      Text(
                        'THE NUMBER',
                        style: TextStyle(
                          color: Color(0xFFFDFDFD),
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding:  EdgeInsets.all(20.0),
                child:  TextField(),
              ),
              ElevatedButton(onPressed: (){}, child: const Text('GUESS'),style: ElevatedButton.styleFrom(primary: Color(0xFF30D6De)),),
            ],
          ),
        ),
      ),
    );
  }
}
