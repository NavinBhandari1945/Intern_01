import 'package:api_practice/codex/base_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_scrn extends StatefulWidget {
  const Home_scrn({super.key});

  @override
  State<Home_scrn> createState() => _Home_scrnState();
}

class _Home_scrnState extends State<Home_scrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          children: [

           Container(
             width: double.infinity,
             height: 80,
             color: CupertinoColors.systemGrey,
             child: ElevatedButton(
               onPressed: ()
               {
                 Baseclient().get("/users"); 

               },
               child: Text("GET"),
             ),
           ),
            SizedBox(
              height: 10,
            ),


            Container(
              width: double.infinity,
              height: 80,
              color: CupertinoColors.systemGrey,
              child: ElevatedButton(
                onPressed: ()
                {

                },
                child: Text("POST"),
              ),
            ),
            SizedBox(
              height: 10,
            ),


            Container(
              width: double.infinity,
              height: 80,
              color: CupertinoColors.systemGrey,
              child: ElevatedButton(
                onPressed: ()
                {

                },
                child: Text("PUT"),
              ),
            ),
            SizedBox(
              height: 10,
            ),


            Container(
              width: double.infinity,
              height: 80,
              color: CupertinoColors.systemGrey,
              child: ElevatedButton(
                onPressed: ()
                {

                },
                child: Text("DELETE"),
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),

    );
  }
}
