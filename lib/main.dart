import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget roller(double heightContainer, double widthContainer) {
    return Container(
      color: Colors.grey,
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

  // This widget is the root of your application.
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
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
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
                            color: Colors.red,
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
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    timer(0),
                    SizedBox(
                      width: 33,
                    ),
                    timer(2),
                    SizedBox(
                      width: 34,
                    ),
                    timer(4),
                    SizedBox(
                      width: 34,
                    ),
                    timer(6),
                    SizedBox(
                      width: 34,
                    ),
                    timer(8),
                  ],
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Color(0xff2d2a2a),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        roller(15, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(15, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(15, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(15, 1),
                        roller(7, 1),
                        roller(15, 1),
                        roller(7, 1),
                        roller(15, 1),
                        roller(7, 1),
                        roller(7, 1),
                        roller(7, 1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
