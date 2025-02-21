import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  final email_cont_sscrn=TextEditingController();
  final password_cont_sscrn=TextEditingController();
  login(email,password) async
  {
    try{
      final response=await http.post(
          Uri.parse("https://reqres.in/api/login"),
          body:
          {
            "email":email,
            "password":password,
          }
      );
      if(response.statusCode==200)
        {
          print("account created");
          var data=jsonDecode(response.body.toString());
          print(data);
        }
      else
        {
          print("account not created");
        }
    }catch(e){
      print("exception caught in sign_up screeen");
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign up screen"),
        ),
        body:
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller:email_cont_sscrn ,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller:password_cont_sscrn,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    primary: Colors.red
                  ),
                    onPressed:(){
                    login(email_cont_sscrn.text.toString(),password_cont_sscrn.text.toString());
                    },
                    child: Text("login")
                ),
              ],
            ),

          ),
        ),
    );
  }
}
