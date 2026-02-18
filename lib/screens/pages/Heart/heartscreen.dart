import 'package:flutter/material.dart';
import 'package:instaclone/screens/pages/Heart/followingscreen.dart';
import 'package:instaclone/screens/pages/Heart/youscreen.dart';

class Heartscreen extends StatelessWidget {
  const Heartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
            Tab(text: "Following",),
            Tab(text: "You",)
          ]),
        ),
        body: TabBarView(
          children: [
            Followingscreen(),
            Youscreen(),
          ]
          ),
      ),
    );
  }
}