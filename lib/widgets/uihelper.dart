import 'package:flutter/material.dart';

class Uihelper {
  static customTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.lightBlue),
      ),
    );
  }

  static customTextfield({
    required TextEditingController controller,
    required String text,
    required bool tohide,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0xFFFFFFFF),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static customImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static customButton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
