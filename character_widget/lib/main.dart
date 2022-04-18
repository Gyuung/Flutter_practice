// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNG',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('세이블앤틸롭'),
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0.0, // 입체감
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 시작점 정렬
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image2.jpg'),
                  radius: 120.0,
                ),
              ),
              Divider(
                height: 60.0, // 디바이더 위 , 아래 거리
                color: Colors.grey[850],
                thickness: 0.5, // 선의두께
                endIndent: 30.0,
              ),
              Text(
                'NAME',
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '절각',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0, // 글자 간격
                    fontSize: 28.0, // 글자 사이즈
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '성별',
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '수컷',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0, // 글자 간격
                    fontSize: 28.0, // 글자 사이즈
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '뿔이 한쪽임',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '뿔이 많이 휘어있음',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '얼굴이 김',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image1.jpg'),
                  radius: 40.0,
                ),
              )
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