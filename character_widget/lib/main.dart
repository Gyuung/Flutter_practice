// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNG',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('SableAntelope'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0, // 입체감
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            children: <Widget>[
              Text(
                'NAME',
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'WINWIN',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

// String res = await Tflite.loadModel(
//   model: "assets/converted_model.tflite",
//   labels: "assets/labels.txt",
//   numThreads: 1, // defaults to 1
//   isAsset: true, // defaults to true, set to false to load resources outside assets
//   useGpuDelegate: false // defaults to false, set to true to use GPU delegate
// );