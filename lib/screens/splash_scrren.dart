import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instaclone/screens/login_screen.dart';
import 'package:instaclone/widgets/uihelper.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgurl: "logo.png"),
            SizedBox(height: 5,),
             Uihelper.customImage(imgurl: "Instagram.png"),
          ],
        ),
      ),
    );
  }
}