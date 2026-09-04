import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key, required this.text, this.fontSize, this.fontWeight, this.overflow, this.maxline, this.colors,
  });
  final String text;
  final Color ? colors;
  final double ?fontSize;
  final FontWeight ?fontWeight;
  final TextOverflow? overflow;
  final double? maxline;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight,
        color: colors,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
