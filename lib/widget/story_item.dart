import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String title;

  StoryItem({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/870/200/300?grayscale&blur=2"))),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title)
        ],
      ),
    );
  }
}
