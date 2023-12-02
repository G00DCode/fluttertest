import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/UiHelper.dart';

class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_rounded),
            Text("Back"),
          ],
        ),
      ),
      body: Stack(
        children: [Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.blue.shade900
                  ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, right: 20,left: 80),
            child: Text(" Create Account!", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),

        ),
          Padding(
            padding: const EdgeInsets.only(top:120.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign up to register", style: TextStyle(color: Colors.blue, fontSize: 20),),
                    SizedBox(height: 20,),
                    UIHelper().CustomTextFieldMail("Full name"),
                    SizedBox(height: 10,),

                    UIHelper().CustomTextFieldMail("example@gmail.com"),

                    SizedBox(height: 10,),
                    UIHelper().CustomPassword("**********", "Password"),
                    SizedBox(height: 10,),

                    UIHelper().CustomPassword("**********", " Confirm Password"),
                    SizedBox(height: 10,),


                    UIHelper().CustomAfterButton(() { }, "Sign in", "Or Sign up with", "Already have an account?", "Sign Up", () { })

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}