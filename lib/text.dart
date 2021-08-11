import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final int index;
  TextComponent({@required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      child: Text("${this.index}"),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
    );
  }
}
