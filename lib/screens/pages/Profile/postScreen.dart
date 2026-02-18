import 'package:flutter/material.dart';

class Postscreen extends StatefulWidget {
  @override
  State<Postscreen> createState() => _PostscreenState();
}

class _PostscreenState extends State<Postscreen> {
  var arrContent = [
    {
      "img":
          "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202312/lionel-messi-181458361-1x1.jpg?VersionId=RO4fupK4n8rL3.zpEl4fSGDv2do8yrQd",
    },
    {
      "img":
          "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
    },
    {
      "img":
          "https://www.instamojo.com/blog/wp-content/uploads/2021/08/Free-Stock-Image-Websites.jpg",
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2016/04/05/11/04/india-1309206_1280.jpg",
    },
    {"img": "https://tinypng.com/images/social/website.jpg"},
    {
      "img":
          "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
    },
    {
      "img":
          "https://img.freepik.com/free-photo/beautiful-girl-standing-boat-looking-mountains-ratchaprapha-dam-khao-sok-national-park-surat-thani-province-thailand_335224-849.jpg?semt=ais_user_personalization&w=740&q=80",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/b/autumn-nature-landscape-colorful-forest-autumn-nature-landscape-colorful-forest-morning-sunlight-131400332.jpg",
    },
    {
      "img":
          "https://images.squarespace-cdn.com/content/v1/57879a6cbebafb879f256735/1712832754805-I7IJ7FRXF629FN3PIS3O/KC310124-27.jpg",
    },
    {
      "img":
          "https://static-cse.canva.com/blob/1626008/ComposeStunningImages16.jpg",
    },
    {
      "img":
          "https://assets.goal.com/images/v3/blt8ca5bd15ac808229/crop/MM5DKMBQGQ5DEOBRGU5G433XMU5DAORSGYYQ====/GettyImages-2232509303.jpg?auto=webp&format=pjpg&width=3840&quality=60",
    },
    {"img": "https://tinypng.com/images/social/website.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 124,
            width: 124,
            child: Image.network(
              arrContent[index]["img"].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: arrContent.length,
      ),
    );
  }
}
