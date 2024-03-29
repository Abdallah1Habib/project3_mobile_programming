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
    final double width = MediaQuery.of(context).size.width;
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
            thickness: width > 600 ? 0.4 : 0.07,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 24,
                ),
                label: Text("Edit profile", style: TextStyle(fontSize: 17)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(mobcolor),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        vertical: width > 600 ? 19 : 10, horizontal: 33),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 24,
                ),
                label: Text("Logout", style: TextStyle(fontSize: 17)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.redAccent[300]),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        vertical: width > 600 ? 19 : 10, horizontal: 33),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.white,
            thickness: width > 600 ? 0.4 : 0.07,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(width > 600 ? 55 : 3),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 33,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 200,
                      width: 200,
                      color: Colors.amber,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
