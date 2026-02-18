import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Messagescreen extends StatefulWidget {

  const Messagescreen({super.key});

  @override
  State<Messagescreen> createState() => _MessagescreenState();
}

class _MessagescreenState extends State<Messagescreen> {
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img":"Oval.png",
      "name":"joshua_l",
      "Lastmessage":"Have a nice day, bro!"
    },

    {
      "img":"Oval (1).png",
      "name":"karennne",
      "Lastmessage":"I heard this is a good movie, s…"
    },

    {
      "img":"Oval (2).png",
      "name":"martini_rond",
      "Lastmessage":"Sounds good 😂😂😂"
    },

    {
      "img":"Oval (3).png",
      "name":"m_humphrey",
      "Lastmessage":"Instagram UI is pretty good"
    },
    {
      "img":"Oval.png",
      "name":"joshua_l",
      "Lastmessage":"Have a nice day, bro!"
    },

    {
      "img":"Oval (1).png",
      "name":"karennne",
      "Lastmessage":"I heard this is a good movie, s…"
    },

    {
      "img":"Oval (2).png",
      "name":"martini_rond",
      "Lastmessage":"Sounds good 😂😂😂"
    },

    {
      "img":"Oval (3).png",
      "name":"m_humphrey",
      "Lastmessage":"Instagram UI is pretty good"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
        title: Text("upendra_sh10", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.white, size: 22,))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, top: 10),
            height: 36,
            width: 360,
            decoration: BoxDecoration(
              color: Color(0xff262626),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xff8E8E93), fontSize: 16, fontWeight: FontWeight.w400)
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: Uihelper.customImage(imgurl: arrContent[index]["img"].toString()),
                title: Text(arrContent[index]["name"].toString(), style: TextStyle(fontSize: 18, color: Color(0xffF9F9F9,), fontWeight: FontWeight.bold),),
                subtitle: Text(arrContent[index]["Lastmessage"].toString(), style: TextStyle(fontSize: 18,  fontWeight: FontWeight.w400),),
                trailing: Uihelper.customImage(imgurl: "Picture.png"),
              );
            },itemCount: arrContent.length,
            ),
          )
        ],
      )
    );
  }
}