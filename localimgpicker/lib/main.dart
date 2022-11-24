import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localimgpicker/models/DB_Helper.dart';
import 'dart:io';
import 'models/Picture_model.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  Future<File>?imageFile;
  Image? image;
  DBHelper? dbHelper;
  List<Picture>? pictures;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    image=[] as Image?;
    dbHelper = DBHelper();
  }

  pickImageFromGal() {
    ImagePicker().pickImage(source: ImageSource.gallery).then((imgFile){

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
           title: const Text("Image Galary"),
         ),

      ),
    );
  }
}
