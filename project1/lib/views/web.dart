import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

import '../screens/add_post.dart';
import '../screens/favorite.dart';
import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/search.dart';

class Webscreen extends StatefulWidget {
  const Webscreen({super.key});

  @override
  State<Webscreen> createState() => _WebscreenState();
}

class _WebscreenState extends State<Webscreen> {
  final PageController _pageController = PageController();
  int page = 0;
  navigatescreen(int indexx) {
    _pageController.jumpToPage(indexx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              navigatescreen(0);
              setState(() {
                page = 0;
              });
            },
            icon: Icon(
              Icons.home,
              color: page == 0 ? primarycolor : secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(1);
              setState(() {
                page = 1;
              });
            },
            icon: Icon(
              Icons.search,
              color: page == 1 ? primarycolor : secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(2);
              setState(() {
                page = 2;
              });
            },
            icon: Icon(
              Icons.add_circle,
              color: page == 2 ? primarycolor : secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(3);
              setState(() {
                page = 3;
              });
            },
            icon: Icon(
              Icons.favorite,
              color: page == 3 ? primarycolor : secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(4);
              setState(() {
                page = 4;
              });
            },
            icon: Icon(
              Icons.person,
              color: page == 4 ? primarycolor : secondarycolor,
            ),
          ),
        ],
        backgroundColor: webcolor,
        title: Image.asset(
          "name",
          color: primarycolor,
          height: 32,
        ),
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          Addpost(),
          Fav(),
          Profile(),
        ],
      ),
    );
  }
}
