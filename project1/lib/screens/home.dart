// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobcolor,
      appBar: AppBar(
        backgroundColor: mobcolor,
        title: Image.asset(
          "name",
          color: primarycolor,
          height: 32,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: secondarycolor,
                      ),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: NetworkImage("url"),
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Abdallah habib",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
          Image.network(
            "src",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.comment_outlined)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "10 likes",
                style: TextStyle(fontSize: 16),
              )),
          Row(
            children: [
              Text(
                "Username",
                style: TextStyle(fontSize: 17, color: primarycolor),
              ),
              Text(
                "Image description",
                style: TextStyle(fontSize: 15, color: primarycolor),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 9, 9, 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "view all 100 comments",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "14/3/2023",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
