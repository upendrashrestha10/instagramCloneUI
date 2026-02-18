import 'package:flutter/material.dart';
import 'package:instaclone/screens/pages/Home/messagescreen.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Homescreen extends StatefulWidget {

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var arrContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-young-cheerful-man-with-arms-crossed_171337-1073.jpg?semt=ais_user_personalization&w=740&q=80",
      "name": "Your story",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
      "name": "jkkkkk",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_user_personalization&w=740&q=80",
      "name": "abcyb",
    },
    {
      "img":
          "https://cdn.create.vista.com/api/media/small/250363326/stock-photo-smiling-attractive-woman-white-sweater-looking-camera-isolated-pink",
      "name": "jacklu",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/handsome-young-cheerful-man-with-arms-crossed_171337-1073.jpg?semt=ais_user_personalization&w=740&q=80",
      "name": "Your story",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
      "name": "jkkkkk",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_user_personalization&w=740&q=80",
      "name": "abcyb",
    },
    {
      "img":
          "https://cdn.create.vista.com/api/media/small/250363326/stock-photo-smiling-attractive-woman-white-sweater-looking-camera-isolated-pink",
      "name": "jacklu",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Color(0xFF121212),
        leading: Uihelper.customImage(imgurl: "Camera Icon.png"),
        title: Uihelper.customImage(imgurl: "Instagram.png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Uihelper.customImage(imgurl: "IGTV (1).png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Messagescreen()));
            },
            icon: Uihelper.customImage(imgurl: "Messanger.png"),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrContent.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              arrContent[index]["img"].toString(),
                            ),
                          ),
                          const SizedBox(height: 6),
                          SizedBox(
                            width: 70,
                            child: Text(
                              arrContent[index]["name"].toString(),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
        
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              height: 54,
              width:  MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/girl.jpg")),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Anaisha Sharma", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("kathmandu, Nepal", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),)
                    ],
                  ),
                  Spacer(),
                  Uihelper.customImage(imgurl: "More Icon.png")
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 375,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Image.network("https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg", fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Uihelper.customImage(imgurl: "Like.png"),
                      SizedBox(width: 10,),
                      Uihelper.customImage(imgurl: "Comment.png"),
                      SizedBox(width: 10,),
                      Uihelper.customImage(imgurl: "Messanger copy.png"),
                      Spacer(),
                      Uihelper.customImage(imgurl: "Save.png"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage("assets/images/demo.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Text("Liked by upendra_sh10 and 44,686 others",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffF9F9F9)),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Text("upendra_sh10 ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("The game in Japan was amazing and I want \nto share some photos", textAlign: TextAlign.justify, style: TextStyle(fontSize: 16,)),
                  ],
                )
              ],
            ),
        
            SizedBox(height: 20,),
        
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              height: 54,
              width:  MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/blacki.png",)),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Black Devil", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("Illuminati, Unknown", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),)
                    ],
                  ),
                  Spacer(),
                  Uihelper.customImage(imgurl: "More Icon.png")
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 375,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Image.network("https://i.pinimg.com/736x/5f/97/d3/5f97d38b1ecfd58be9b9446f75eac63d.jpg", fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Uihelper.customImage(imgurl: "Like.png"),
                      SizedBox(width: 10,),
                      Uihelper.customImage(imgurl: "Comment.png"),
                      SizedBox(width: 10,),
                      Uihelper.customImage(imgurl: "Messanger copy.png"),
                      Spacer(),
                      Uihelper.customImage(imgurl: "Save.png"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage("assets/images/demo.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Text("Liked by Unkown_444 and 11111,11 others",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffF9F9F9)),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Text("Mystry_me07 ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Are you an alian. This is so scary", textAlign: TextAlign.justify, style: TextStyle(fontSize: 16,)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
