import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/first_screen.dart';

void main(){
  runApp(FlutterTask());
}
class FlutterTask extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Test",
      home: FirstPage(),
    );
  }
}
