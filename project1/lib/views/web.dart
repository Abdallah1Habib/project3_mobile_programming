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
            },
            icon: Icon(
              Icons.home,
              color: primarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(1);
            },
            icon: Icon(
              Icons.search,
              color: secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(2);
            },
            icon: Icon(
              Icons.add_circle,
              color: secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(3);
            },
            icon: Icon(
              Icons.favorite,
              color: secondarycolor,
            ),
          ),
          IconButton(
            onPressed: () {
              navigatescreen(4);
            },
            icon: Icon(
              Icons.person,
              color: secondarycolor,
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
