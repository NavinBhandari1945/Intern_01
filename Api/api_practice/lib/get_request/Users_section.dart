import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Users_Section extends StatefulWidget {
  const Users_Section({Key? key}) : super(key: key);
  @override
  State<Users_Section> createState() => _Users_SectionState();
}
class _Users_SectionState extends State<Users_Section> {
  var data;
  List<Map> userlist=[];
  Future<void> getUser()async
  {
    var response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if(response.statusCode==200)
      {
        data=jsonDecode(response.body.toString());
        for(Map i in data)
          {
            userlist.add(i);
          }
      }else
        {
          print("404 error");
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Users section screen"),
    ),
    body:
    Container(
      child: Column(
        children: [
          Expanded(
            child:
            FutureBuilder(
                future: getUser(),
                builder: (context, snapshot) {
                  if(snapshot.connectionState==ConnectionState.waiting)
                    {
                      return Text("loading");
                    }
                  else
                    {
                      return ListView.builder(
                        itemCount: userlist.length,
                          itemBuilder:(context, index)
                          {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.green,
                              ),
                              title: Text(userlist[index]['address']['geo']['lat'].toString()),
                              subtitle: Text(userlist[index]['name']),
                            );
                          },
                      );
                    }
                },
            ),
          ),
        ],
      ),
    ),
    );
  }
}
