import 'package:flutter/material.dart';
import 'package:instaclone/widgets/uihelper.dart';

class Searchscreen extends StatefulWidget {

  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  TextEditingController searcController = TextEditingController();

  var arrContent =[
    {
      "img":"https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2019/06/26/09/52/shit-image-4300034_1280.jpg"
    },
    {
      "img":"https://www.mamp.one/wp-content/uploads/2024/09/image-resources2.jpg"
    },
    {
      "img":"https://img.freepik.com/free-photo/closeup-shot-beautiful-butterfly-with-interesting-textures-orange-petaled-flower_181624-7640.jpg?semt=ais_wordcount_boost&w=740&q=80"
    },
    {
      "img":"https://www.shutterstock.com/image-photo/sun-sets-behind-mountain-ranges-600nw-2479236003.jpg"
    },
    {
      "img":"https://static.vecteezy.com/system/resources/thumbnails/008/421/594/small/beautiful-woman-holds-digital-camera-and-taking-blurry-background-behind-the-scene-young-asiangrapher-standing-in-green-park-taking-pictures-as-recreation-touristgraphing-concept-photo.jpg"
    },
    {
      "img":"https://assets.monica.im/tools-web/_next/static/media/mobile_upscale.e93d7497.webp"
    },
        {
      "img":"https://www.bigfootdigital.co.uk/wp-content/uploads/2020/07/image-optimisation-scaled.jpg"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2019/06/26/09/52/shit-image-4300034_1280.jpg"
    },
    {
      "img":"https://www.mamp.one/wp-content/uploads/2024/09/image-resources2.jpg"
    },
    {
      "img":"https://img.freepik.com/free-photo/nature-landscape-with-hand-holding-frame_23-2149389976.jpg?semt=ais_user_personalization&w=740&q=80"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg"
    },
    {
      "img":"https://cdn.pixabay.com/photo/2023/09/21/14/17/italy-8266783_1280.jpg"
    },
    {
      "img":"https://ik.imagekit.io/ikmedia/blog/ghost/content/images/2019/12/image-optimization.jpg"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 48, left: 20),
                height: 36,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF262626),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searcController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF8E8E93),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 48, right: 20),
                child: Uihelper.customImage(imgurl: "Live.png"),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customImage(imgurl: "igtv.png"),
                    SizedBox(width: 5),
                    Text(
                      'IGTV',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customImage(imgurl: "shop.png"),
                    SizedBox(width: 5),
                    Text(
                      'Shop',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Style',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sports',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Auto',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                decoration: BoxDecoration(),
                child: Image.network(arrContent[index]["img"].toString(), fit: BoxFit.cover,),
              );
            },itemCount: arrContent.length
            ),
          )
        ],
      ),
    );
  }
}
