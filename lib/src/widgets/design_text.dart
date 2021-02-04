import 'package:flutter/material.dart';

class DesignText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  const DesignText(this.text, {this.color, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.fontSize,
        fontWeight: fontWeight,
        color: this.color,
      ),
    );
  }
}
