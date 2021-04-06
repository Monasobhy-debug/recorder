import 'package:flutter/material.dart';
import 'constant.dart';

class DrawRoller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      color: containerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Roller(
              heightContainer: 20, widthContainer: 1, rollerColor: whiteColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(
              heightContainer: 20, widthContainer: 1, rollerColor: whiteColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(
              heightContainer: 20, widthContainer: 1, rollerColor: whiteColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(
              heightContainer: 20, widthContainer: 1, rollerColor: whiteColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(
              heightContainer: 20, widthContainer: 1, rollerColor: whiteColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
          Roller(heightContainer: 7, widthContainer: 1, rollerColor: grayColor),
        ],
      ),
    );
  }
}

class Roller extends StatelessWidget {
  Roller(
      {@required this.heightContainer,
      @required this.widthContainer,
      @required this.rollerColor});
  final Color rollerColor;
  final double widthContainer;
  final double heightContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: rollerColor,
      height: heightContainer,
      width: widthContainer,
    );
  }
}
