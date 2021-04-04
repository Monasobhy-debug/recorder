import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget roller(
      double heightContainer, double widthContainer, Color rollerColor) {
    return Container(
      color: rollerColor,
      height: heightContainer,
      width: widthContainer,
    );
  }

  Widget timer(int n) {
    return Container(
      child: Text(
        '00:0$n',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget topButton(String text) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Voice Recorder',
              ),
              Text(
                'List',
                textAlign: TextAlign.right,
              ),
            ],
          ),
          actions: [Icon(Icons.more_vert)],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xffEB2123),
                      ),
                      child: Center(
                        child: Text(
                          'Standard',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  topButton('interview'),
                  SizedBox(
                    width: 10,
                  ),
                  topButton('Speech-to-text'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    timer(0),
                    timer(2),
                    timer(4),
                    timer(6),
                    timer(8),
                    SizedBox(
                      width: 18,
                    ),
                  ],
                ),
              ),
              Container(
                height: 230,
                width: double.infinity,
                color: Color(0xff2d2a2a),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    roller(20, 1, Colors.white),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(20, 1, Colors.white),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(20, 1, Colors.white),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(20, 1, Colors.white),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(20, 1, Colors.white),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                    roller(7, 1, Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.circle,
                    color: Color(0xffEB2123),
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
