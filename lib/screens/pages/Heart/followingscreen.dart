import 'package:flutter/material.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Followingscreen extends StatelessWidget {
  const Followingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (1).png"),
                  title: Text(
                    "karennne liked 3 posts. 3h",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: Uihelper.customImage(imgurl: "Rectangle.png"),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval.png"),
                  title: Text(
                    "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: Uihelper.customImage(imgurl: "Rectangle.png"),
                ),
                
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (4).png"),
                  title: Text("kiero_d started following craig_love. 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (1).png"),
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (2).png"),
                  title: Text("craig_love liked 8 posts. 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (1).png"),
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (7).png"),
                  title: Text("maxjacobson and zackjohn liked mis_potter’s post. 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (1).png"),
                ),
                 SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (7).png"),
                  title: Text("maxjacobson and craig_love liked martini_rond’s post. 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (2).png"),
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (6).png"),
                  title: Text("karennne liked martini_rond’s comment: @martini_rond Nice! 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                   trailing: Uihelper.customImage(imgurl: "Rectangle (3).png"),
                ),
                SizedBox(height: 20,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (7).png"),
                  title: Text("maxjacobson liked 3 posts. 3h",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
