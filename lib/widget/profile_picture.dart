import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.amber]),
            borderRadius: BorderRadius.circular(60),
            color: Colors.amber,
          ),
          height: 120,
          width: 120,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/300"),
                fit: BoxFit.cover),
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(60),
            color: Colors.blue,
          ),
          height: 110,
          width: 110,
        )
      ],
    );
  }
}
