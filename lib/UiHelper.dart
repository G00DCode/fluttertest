import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIHelper{
  CustomTextFieldMail( String HintText, ){
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email"),
            TextField(
              decoration: InputDecoration(
                hintText: HintText,
                prefixIcon: Icon(Icons.mail),
              ),
            ),
          ],
        ),
      ],
    );
  }
  CustomPassword(String HintText, String text1){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: HintText,
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ],
    );
  }
  CustomAfterButton(VoidCallback voidCallback, String textButton, String TextMid, String TextDontHave,String elevatedButton, VoidCallback SignUpInDont){
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: (){voidCallback();} ,
              child: Text(elevatedButton)),
          SizedBox(height: 20,),
          Text(TextMid,style: TextStyle(color: Colors.grey),),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/fb.png"),
                backgroundColor: Colors.white,

              ),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/google.png"),
                backgroundColor: Colors.white,
              ),
              SizedBox(width: 10,),

              CircleAvatar(
                backgroundImage: AssetImage("assets/images/apple.png"),
                backgroundColor: Colors.white,

              ),


            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text(TextDontHave),
              TextButton(onPressed: (){
                SignUpInDont();
              }, child: Text(textButton)),


            ],
          )
        ],
      ),
    );

  }

}