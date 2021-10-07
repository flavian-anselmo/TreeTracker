import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class UploadPhotoToDb extends StatefulWidget {
  const UploadPhotoToDb({Key? key}) : super(key: key);
  static const String id = 'upload';

  @override
  _UploadPhotoToDbState createState() => _UploadPhotoToDbState();
}

class _UploadPhotoToDbState extends State<UploadPhotoToDb> {
  File? imageFile;
  bool isFetchedCamera = false;

  Future<void> getFromCamera() async {
    //pick a photo from the camera
    XFile? pickFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickFile != null) {
      setState(() {
        imageFile = File(pickFile.path);

        isFetchedCamera = true;
        if (isFetchedCamera == true) {
          uploadImage();
        }
      });
    } else {}
  }

  Future<void> uploadImage() async {
    //take the image urk
    //upload the image to firebase
    final storage = FirebaseStorage.instance;
    final firestore = FirebaseFirestore.instance;
    if (imageFile != null) {
      //upload since we have a path
      //fetcj only the file name

      var imagename = basename(imageFile!.path);
      var snapshot = await storage.ref().child(imagename).putFile(imageFile!);
      var downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        //imageFile = downloadUrl as File?;
        //send the download image url to firebase firestore
        //to get it as a network image

        firestore
            .collection('pics')
            .add({'videourl': downloadUrl}).whenComplete(() {
          //PUT A toast msg to the user
          print('data saved well ');
          EasyLoading.showSuccess('You are a Hero ');
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Upload a Tree'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: imageFile == null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text('No Image Selected!'),
                            TextButton(
                              onPressed: () {
                                //will access the camera and take tree picture
                                getFromCamera();
                              },
                              child: const Text('upload with Camera',style: TextStyle(color:Colors.green,fontSize:20)),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.file(imageFile!),
                            TextButton(
                              onPressed: () {
                                //post the image on cloud storage
                              },
                              child: const Text('upload Image',style: TextStyle(color:Colors.green,fontSize:20)),
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
