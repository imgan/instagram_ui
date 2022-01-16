import 'package:flutter/material.dart';

class information_item extends StatelessWidget {
  information_item(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(title),
      ],
    );
  }
}
