import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/PostsModel.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<PostsModel> postlist=[];
  Future<List<PostsModel>>getPostApi() async
  {
    var response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postlist.add(PostsModel.fromJson(i));
      }
      return postlist;
    }else
    {
    return postlist;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post section screen"),
      ),
      body:
      Container(
        color: Colors.red,
        child: Column(
          children: [
               Expanded(
                 child: Container(
                  color: Colors.black,
                   child:

                   FutureBuilder (
                        future: getPostApi(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData){
                            return Text("Loading");
                          }
                          else{
                            return ListView.builder(
                              itemCount:20,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.blueGrey,
                                  child: Column(
                                    children: [
                                  Text(
                                  "Tittle="+postlist[index].title.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                "Id="+postlist[index].id.toString(),
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                ),
                                ),
                                    ],
                                  ),
                                );
                                //   Text(
                                //     "Tittle="+postlist[index].title.toString(),
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontSize: 30,
                                //   ),
                                // );
                              },
                            );
                          }
                        },
              ),


                 ),
               ),
          ],
        ),
      ),
    );
  }
}
