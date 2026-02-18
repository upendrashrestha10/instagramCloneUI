import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/screens/pages/Heart/heartscreen.dart';
import 'package:instaclone/screens/pages/Home/homescreen.dart';
import 'package:instaclone/screens/pages/Post/postscreen.dart';
import 'package:instaclone/screens/pages/Profile/profilescreen.dart';
import 'package:instaclone/screens/pages/Search/searchscreen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        backgroundColor: Colors.black,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app), label: "Post"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Heart"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
      ]),
      body: IndexedStack(
         children: pages,
        index: currentIndex,
      ),
    );
  }
}