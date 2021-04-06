import 'package:flutter/material.dart';
import 'constant.dart';

class PutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 10,
        ),
        TopButton(textOfButton: 'Standard', colorButton: redColor),
        SizedBox(
          width: 10,
        ),
        TopButton(
            textOfButton: 'interview',
            borderButton: Border.all(color: whiteColor, width: 1)),
        SizedBox(
          width: 10,
        ),
        TopButton(
            textOfButton: 'Speech-to-text',
            borderButton: Border.all(color: whiteColor, width: 1)),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

class TopButton extends StatelessWidget {
  TopButton({@required this.textOfButton, this.colorButton, this.borderButton});
  final Border borderButton;
  final Color colorButton;

  final String textOfButton;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: borderButton,
          color: colorButton,
        ),
        child: Center(
          child: Text(
            textOfButton,
          ),
        ),
      ),
    );
  }
}
