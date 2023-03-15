import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';
import 'package:project1/screens/add_post.dart';
import 'package:project1/screens/favorite.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/profile.dart';
import 'package:project1/screens/search.dart';

class Mobilescreen extends StatefulWidget {
  const Mobilescreen({super.key});

  @override
  State<Mobilescreen> createState() => _MobilescreenState();
}

class _MobilescreenState extends State<Mobilescreen> {
  final _pageController = PageController();
  int page = 0;

  @override
  void dis() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          onTap: (index) {
            _pageController.jumpToPage(index);
            setState(() {
              page = index;
            });
          },
          backgroundColor: mobcolor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: page == 0 ? primarycolor : secondarycolor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: page == 1 ? primarycolor : secondarycolor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  color: page == 2 ? primarycolor : secondarycolor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: page == 3 ? primarycolor : secondarycolor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: page == 4 ? primarycolor : secondarycolor,
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          Addpost(),
          Profile(),
          Fav(),
        ],
      ),
    );
  }
}
