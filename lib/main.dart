import 'package:flutter/material.dart';
import 'constant.dart';
import 'topButton.dart';
import 'DrawTimer.dart';
import 'DrawRoller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: blackColor,
        scaffoldBackgroundColor: blackColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
              PutButton(),
              DrawTimer(),
              DrawRoller(),
              SizedBox(
                height: 150,
              ),
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: whiteColor,
                  onPressed: () {},
                  child: Icon(
                    Icons.circle,
                    color: redColor,
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
