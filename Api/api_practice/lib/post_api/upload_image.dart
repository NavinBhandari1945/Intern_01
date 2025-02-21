import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;
class Upload_image_scrn extends StatefulWidget {
  const Upload_image_scrn({super.key});

  @override
  State<Upload_image_scrn> createState() => _Upload_image_scrnState();
}

class _Upload_image_scrnState extends State<Upload_image_scrn> {
  XFile? image;
  var isspinner=false;
  final picker=ImagePicker();
  Future getImage()async{
    final pickimage=await picker.pickImage(source: ImageSource.camera);
    if(pickimage!=null)
      {
        setState(() {
          image=File(pickimage.path) as XFile?;
        });
      }
    else
      {
        print("no image picked");
      }
  }
  Future<void> uploadImage()async
  {
    setState(() {
      isspinner=true;
    });
    var stream=new http.ByteStream(image!.openRead());
    stream.cast();
    var length=await image!.length();
    var uri=Uri.parse("https://fakestoreapi.com/products");
    var request=new http.MultipartRequest("post",uri);

  }
  @override
  Widget build(BuildContext context) {
    return
      ModalProgressHUD(
        inAsyncCall:isspinner,
        child: Scaffold(
          appBar: AppBar(
          title: Text("Sign up screen"),
    ),
    body:
    Center(
    child: Container(
    child: Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children:
    [

        Container(
          child: image==null?Center(child: Text("Pick image"),):
              Container(
                child: Center(
                  child: Image.file(
                    File(image!.path).absolute,
                    height: 100,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              )
        )



    ]
    ),
    ),
    ),
    ),
      );
  }
}
