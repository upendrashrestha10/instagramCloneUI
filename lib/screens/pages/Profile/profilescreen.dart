import 'package:flutter/material.dart';
import 'package:instaclone/screens/pages/Profile/postScreen.dart';
import 'package:instaclone/screens/pages/Profile/tagscreen.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 88,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.customImage(imgurl: "Private Icon.png"),
              SizedBox(width: 10),
              Text(
                "upendra_sh10",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF9F9F9),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Uihelper.customImage(imgurl: "Menu (2).png"),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.customImage(imgurl: "Oval (2).png"),
                SizedBox(width: 80),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 55),
      
                    Column(
                      children: [
                        Text(
                          "834",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 55),
      
                    Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Upendra Shrestha",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Digital goodies designer @pixsellz ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Everything is designed.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 35,
                width: 400,
                decoration: BoxDecoration(color: Color(0xff000000)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
      
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(color: Colors.grey.shade700)
                      ),
                      child: Center(child: Icon(Icons.add, size: 40,),),
                    ),
                    Text("New", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Container(
                      height: 60, 
                      width: 60, 
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                      child: ClipOval(
                        child: Image.asset("assets/images/demo.jpg", fit: BoxFit.cover,)),
                    ),
                    Text("Animation", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Container(
                      height: 60, 
                      width: 60, 
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                      child: ClipOval(
                        child: Image.asset("assets/images/girl.jpg", fit: BoxFit.cover,)),
                    ),
                    Text("Friends", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              child:AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                  Tab(
                    icon: Uihelper.customImage(imgurl: "Grid Icon.png"),
                  ),
                  Tab(
                    icon: Uihelper.customImage(imgurl: "Tags Icon.png"),
                  )
                ]),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Postscreen(),
                Tagscreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
