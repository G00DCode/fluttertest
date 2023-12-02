import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/UiHelper.dart';
import 'package:fluttertest/second_screen.dart';

class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
            child: Text(" Welcome Back!", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
                  children: [
                    Text("Sign in to continue", style: TextStyle(color: Colors.blue, fontSize: 20),),
                    SizedBox(height: 20,),
                    UIHelper().CustomTextFieldMail("example@gmail.com"),
                    SizedBox(height: 10,),
                    UIHelper().CustomPassword("Password", "Password"),
                    SizedBox(height: 10,),

                    UIHelper().CustomAfterButton(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                    }, "Sign up", "Or Sign in with", "Don't have an account?", "Sign In", () { })

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