import 'package:flutter/material.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Youscreen extends StatelessWidget {
  const Youscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Follow Request",
                style: TextStyle(fontSize: 15, color: Color(0xffF9F9F9)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (1).png"),
                  title: Text(
                    "karennne liked your photo. 1h",
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
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      "Today",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval.png"),
                  title: Text(
                    "kiero_d, zackjohn and 26 others liked your photo . 3h",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  trailing: Uihelper.customImage(imgurl: "Rectangle.png"),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("This Week",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700), )
                  ],
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (4).png"),
                  title: Text("craig_love mentioned you in a comment: @jacob_w exactly..💫 2d",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (1).png"),
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (2).png"),
                  title: Text("martini_rond started following you. 3d",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500)
                    ),
                    child: Center(child: Text("Message",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), )),
                  )
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (5).png"),
                  title: Text("maxjacobson started following you. 3d",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500)
                    ),
                    child: Center(child: Text("Message",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), )),
                  )
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (6).png"),
                  title: Text("mis_potter started following you. 3d",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      color: Color(0xff3797EF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(child: Text("Follow",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600), )),
                  )
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("This Month",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700), )
                  ],
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Uihelper.customImage(imgurl: "Oval (3).png"),
                  title: Text("craig_love mentioned you in a comment: @jacob_w exactly..💫 2d",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  trailing: Uihelper.customImage(imgurl: "Rectangle (1).png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
