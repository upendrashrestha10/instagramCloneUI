import 'package:flutter/material.dart';
import 'package:instaclone/screens/bottomnavscreen.dart';
import 'package:instaclone/screens/signup_screen.dart';
import 'package:instaclone/widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgurl: "Instagram.png"),
            SizedBox(height: 40,),
            Uihelper.customTextfield(controller: emailController, text: 'email', tohide: false, ),
            SizedBox(height: 10,),
            Uihelper.customTextfield(controller: passwordController, text: 'password', tohide: true, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(right: 20),
                child: Uihelper.customTextButton(text: "Forgot password ?", callback: (){}),),
            ],),

            SizedBox(height: 30,),
            Uihelper.customButton(callback: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnavscreen()));
            }, buttonName: 'Log in'),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customImage(imgurl: "Shape.png"),
                Uihelper.customTextButton(text: "Log in with Facebook", callback: (){})
              ],
            ),
            SizedBox(height: 10,),
            Text("OR", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?", style: TextStyle(fontSize: 14, color: Colors.white),),
                Uihelper.customTextButton(text: "Sign up", callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}