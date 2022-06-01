import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pcd2/Models/user_model.dart';
import 'package:pcd2/Pages/Home.dart';
import 'package:pcd2/Pages/firebase_storage_service.dart';
import 'package:pcd2/Widgets/app_colors.dart';
class NonConfirmedUserPage extends StatefulWidget {
  const NonConfirmedUserPage({Key? key}) : super(key: key);

  @override
  State<NonConfirmedUserPage> createState() => _NonConfirmedUserPageState();
}

class _NonConfirmedUserPageState extends State<NonConfirmedUserPage> {
  User?user = FirebaseAuth.instance.currentUser;
  UserAssureModel LoggedInAssure = UserAssureModel();
  Storage storage=Storage();
  var FileName;
  var FilePath;

  XFile? _file;
  File?Cin;
  File?bulletin;
  File?cdi;
  File?photo;

  void initState(){
    super.initState();
    FirebaseFirestore.instance
        .collection('assure')
        .doc(user!.uid)
        .get()
        .then((value) {
      this.LoggedInAssure=UserAssureModel.fromMap(value.data());
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
          iconSize: 45,
        ),
        title: Text("Confimation du Compte"),




      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              Padding(
                padding:EdgeInsets.only(top:15.0),
                child: Container(
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/cnam.png'),
                      height: 180,
                    ),

                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 220),
                child: Center(
                  child: Container(
                    height: 3,
                    width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      color: AppColors.Blue
                    ),
                  ),
                ),



              ),
              Padding(
                padding: const EdgeInsets.only(top:240.0),
                child: Container(
                  // margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(left: 20, right: 20),

                  child: Text(
                    "Pour bénéficier des prestations fournies par l'assurance maladie obligatoire de base,l'assuré présente un dossier d'adhésion complet au bureau d'accueil de la CNAM.Il suffit d'importer ses fichiers indiqués ci-dessous pour terminer la composition du dossier d'adhésion.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.Blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 400),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "Veuillez scanner les fichiers ci-dessous :",
                        style: TextStyle(
                            color: AppColors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),

                      ),
                      SizedBox(height: 10,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),


                        height: 50,
                        color: AppColors.LightGrey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Carte d'identité nationale CIN :",
                              style: TextStyle(
                                color: AppColors.Blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),

                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.gallery);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Cin ${LoggedInAssure.uid}';
                                            FilePath=file.path;
                                            print('${LoggedInAssure.cin}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                        },
                                      icon: Icon(Icons.file_upload
                                        ,color: AppColors.Blue,),
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{var file=await ImagePicker().pickImage(source: ImageSource.camera);
                                      setState(() {
                                        if(file!=null){
                                          FileName=file.name;
                                          FilePath=file.path;
                                          print('${FilePath}');
                                          print('${FilePath}');

                                          storage.UploadFile(FileName, FilePath);
                                        }else{
                                          return null;
                                        }

                                      });},
                                      icon: Icon(Icons.camera_alt
                                        ,color: AppColors.Blue,),
                                    ),
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),


                        height: 50,
                        color: AppColors.LightGrey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Bulletin de salaire/pension :",
                              style: TextStyle(
                                  color: AppColors.Blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),

                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.gallery);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Bulletin de salaire/pension ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.file_upload
                                        ,color: AppColors.Blue,),
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.camera);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Bulletin de salaire/pension ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.camera_alt
                                        ,color: AppColors.Blue,),
                                    ),
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),


                        height: 50,
                        color: AppColors.LightGrey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Contrat de travail CDI :",
                              style: TextStyle(
                                  color: AppColors.Blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),

                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.gallery);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Contrat de travail CDI ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.file_upload
                                        ,color: AppColors.Blue,),
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.camera);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Contrat de travail CDI ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.camera_alt
                                        ,color: AppColors.Blue,),
                                    ),
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),


                        height: 50,
                        color: AppColors.LightGrey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Une photo recente de vous ",
                              style: TextStyle(
                                  color: AppColors.Blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),

                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.gallery);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Photo ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.file_upload
                                        ,color: AppColors.Blue,),
                                    ),
                                  ),

                                  Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        var file=await ImagePicker().pickImage(source: ImageSource.camera);
                                        setState(() {
                                          if(file!=null){
                                            FileName='Photo ';
                                            FilePath=file.path;
                                            print('${FilePath}');
                                            print('${FilePath}');

                                            storage.UploadFile(FileName, FilePath);
                                          }else{
                                            return null;
                                          }

                                        });

                                      },
                                      icon: Icon(Icons.camera_alt
                                        ,color: AppColors.Blue,),
                                    ),
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,


                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.Blue,
                          ),
                          child: FlatButton(
                            onPressed: (){},
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Veuillez Confirmer votre E-mail:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),

                              ),
                              Container(
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.send,
                                    color: Colors.white,),

                                ),
                              )


                            ],
                          ), ),

                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(

                          child: IconButton(
                            iconSize: 100,
                            onPressed: (){},


                            icon: Image.asset('icons/empreinte-digitale.png'),color: AppColors.Blue,),


                          ),
                        ),
                      SizedBox(height: 10,),
                      FlatButton(onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );}, child: Center(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.green,
                            ),
                            child: Center(child: Text("Valider",style: TextStyle(color: Colors.white,fontSize: 25,),))
                        ),
                      ),),





                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
 void PickImageFromGalery()async{
    var file=await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if(file!=null){
        FileName=file.name;
        FilePath=file.path;
        print('${FilePath}');
        print('${FilePath}');

        storage.UploadFile(FileName, FilePath);
      }else{
        return null;
      }

    });

  }
  void PickImage() async {
    var file=await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if(file!=null){
        FileName=file.name;
        FilePath=file.path;
        print('${FilePath}');
        print('${FilePath}');

        storage.UploadFile(FileName, FilePath);
      }else{
        return null;
      }
    });
  }

}
