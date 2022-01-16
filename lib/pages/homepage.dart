import 'package:flutter/material.dart';
import 'package:prod_mon/widget/information_item.dart';
import 'package:prod_mon/widget/profile_picture.dart';
import 'package:prod_mon/widget/story_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Text(
              "imamsatrianta",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    information_item("Posts", "123"),
                    information_item("Followers", "2504"),
                    information_item("Following", "25039")
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "imamsatrianta",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: "#hastag", style: TextStyle(color: Colors.blue))
                  ]),
            )),
        SizedBox(height: 5),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "link goes here",
              style: TextStyle(color: Colors.blue),
            )),
        SizedBox(height: 5),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              // style: ElevatedButton.styleFrom(primary: Colors.white),
            )),
        SizedBox(height: 5),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                    title: "Mercusuar",
                  ),
                  StoryItem(
                    title: "Mercusuar",
                  ),
                  StoryItem(
                    title: "Mercusuar",
                  ),
                  StoryItem(
                    title: "Mercusuar",
                  ),
                  StoryItem(
                    title: "Mercusuar",
                  ),
                  StoryItem(
                    title: "Mercusuar",
                  ),
                ],
              ),
            )),
        SizedBox(height: 8),
        Row(
          children: [
            Tab_item(),
            Expanded(child: Icon(Icons.person_pin_outlined))
          ],
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 210,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) => Image.network(
                  "https://picsum.photos/200/300",
                  fit: BoxFit.cover,
                ))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home")
        ],
      ),
    );
  }
}

class Tab_item extends StatelessWidget {
  const Tab_item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
            child: Icon(Icons.grid_on_sharp)));
  }
}
