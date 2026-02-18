import 'package:flutter/material.dart';
import 'package:instaclone/screens/login_screen.dart';
import 'package:instaclone/widgets/uihelper.dart';

class SignupScreen extends StatefulWidget {

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imgurl: "Instagram.png"),
            SizedBox(height: 30,),
            Uihelper.customTextfield(controller: emailController, text: "Email", tohide: false),
            SizedBox(height: 15,),
            Uihelper.customTextfield(controller: passwordController, text: 'Password', tohide: true),
            SizedBox(height: 15,),
            Uihelper.customTextfield(controller: usernameController, text: "Username", tohide: false),
            SizedBox(height: 30,),
            Uihelper.customButton(callback: (){}, buttonName: 'SIgn up'), 
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?", style: TextStyle(color: Colors.grey, fontSize: 18),),
                Uihelper.customTextButton(text: "Log in", callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}