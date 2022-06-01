import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Storage {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<void> UploadFile(String FileName, String FilePath) async {
    File file = File(FilePath);

    try {

      await storage.ref('User/${FileName}').putFile(file);
    }on FirebaseException catch (e){Fluttertoast.showToast(msg: '${e}');}
  }
}