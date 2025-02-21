import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Photo_Section extends StatefulWidget {
  const Photo_Section({Key? key}) : super(key: key);

  @override
  State<Photo_Section> createState() => _Photo_SectionState();
}

class _Photo_SectionState extends State<Photo_Section> {

  List<Photos> photolist=[];
  Future<List<Photos>> getPhotos()async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200)
      {
        for(Map i in data)
          {
            var photos=Photos(title:i['title'], url: i['url']);
            photolist.add(photos);
          }
        return photolist;
      }else
        {
          return photolist;
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Photo section screen"),
        ),
        body:Container(
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                    future: getPhotos(),
                    builder:(context, snapshot) {
                      return ListView.builder(
                        itemCount: photolist.length,
                          itemBuilder:(context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(photolist[index].url.toString()),
                              ),
                              title:Text(photolist[index].title.toString()),
                              subtitle: Text(photolist[index].url.toString()),
                            );
                          },
                      );
                    },
                ),
              )
            ],
          ),
        ),


        
    );
  }


}
class Photos{
  String? title;
  String? url;
  Photos({required this.title,required this.url});
}
