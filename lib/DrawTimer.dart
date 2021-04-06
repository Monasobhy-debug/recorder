import 'package:flutter/material.dart';
import 'constant.dart';

class Timer extends StatelessWidget {
  Timer({this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '00:0$number',
        style: TextStyle(color: grayColor),
      ),
    );
  }
}

class DrawTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Timer(number: 0),
          Timer(number: 2),
          Timer(number: 4),
          Timer(number: 6),
          Timer(number: 8),
          SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }
}
