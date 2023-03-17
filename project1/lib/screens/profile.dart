import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _HomeState();
}

class _HomeState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobcolor,
        title: Text("username"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondarycolor,
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("url"),
                ),
              ),
              Column(
                children: [
                  Text(
                    "1",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Posts",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Text(
                    "15",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Text(
                    "3",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Following",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Container(
            child: Text("Hello"),
            margin: EdgeInsets.fromLTRB(15, 22, 0, 0),
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.white,
            thickness: 0.07,
          )
        ],
      ),
    );
  }
}
