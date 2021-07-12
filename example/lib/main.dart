import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:aes_africa/aes_africa.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> getString() async{
    await AesAfrica.getAesedString('111111');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){getString();},
            child: Container(
              height: 40,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                    'click to liveness'
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
