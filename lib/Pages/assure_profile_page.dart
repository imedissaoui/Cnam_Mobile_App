import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pcd2/Models/user_model.dart';
import 'package:pcd2/Pages/Creer_demande_form.dart';
import 'package:pcd2/Pages/Home.dart';
import 'package:pcd2/Pages/Remboursementoperation.dart';
import 'package:pcd2/Pages/informations_page.dart';
import 'package:pcd2/Pages/page_remboursement%20achat.dart';
import 'package:pcd2/Pages/remboursementacci.dart';
import 'package:pcd2/Pages/serviceretraite.dart';
import 'package:pcd2/Widgets/app_colors.dart';
import 'package:pcd2/Widgets/service_box.dart';
class AssureProfilePage extends StatefulWidget {
  const AssureProfilePage({Key? key}) : super(key: key);

  @override
  State<AssureProfilePage> createState() => _AssureProfilePageState();
}

class _AssureProfilePageState extends State<AssureProfilePage> {



  
  User?user = FirebaseAuth.instance.currentUser;
  UserAssureModel LoggedInAssure = UserAssureModel();
  
  @override
  void initState(){
    super.initState();
    FirebaseFirestore.instance
    .collection('assure')
    .doc(user?.uid)
    .get()
    .then((value) {
      this.LoggedInAssure=UserAssureModel.fromMap(value.data());
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGrey,
      appBar: AppBar(

        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: (){},
          iconSize: 45,
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: IconButton(
              icon:Icon(
                Icons.logout,size: 35,
              ),
              onPressed: (){LogOut(context);},),)],
        title: Text(
          "Mon profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),


      ),
      body: SingleChildScrollView(
        child:  Column(

          children: [

            Container(
              /*              padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 120),
              height: 600,*/


              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.LightGrey,
                        image: DecorationImage(



                            //fit: BoxFit.cover,

                            image: AssetImage('assets/avatar2.png',

                            )

                        )
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          SizedBox(width: 20,),

                          Text('${LoggedInAssure.nom}',style:TextStyle(color: AppColors.Blue,fontWeight: FontWeight.bold,fontSize: 25)),
                          SizedBox(width: 20,),
                          IconButton(onPressed: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const InformationsPage()),
                            );
                          }, icon: Icon(Icons.edit,color: AppColors.Blue,size: 30,))
                        ],
                      )
                  ),
                ],
              ),
            ),

            Container(
            padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 120),
            height: 600,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                color: AppColors.Blue,

                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0),topRight: const Radius.circular(30.0)),
              ),
              child:  Column(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DemandeFormPage()),
                        );
                      }, child:
                      ServiceBox(icon: "icons/medicament.png", Name: "Remboursement sur l'achat des medicaments"),
                      ),
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage()),
                        );
                      }, child:
                      ServiceBox(icon: "icons/table-doperation.png", Name: "Remboursement sur les operations "),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage() ),
                        );
                      }, child: ServiceBox(icon: 'icons/accident.png', Name: "Remboursement sur les accidents du travail"),
                      ),
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage()),
                        );
                      }, child: ServiceBox(icon: "icons/maison-de-retraite.png", Name: "inscription au services du retraite"),
                      ),
                    ],
                  ),




                ],
              ),

            ),



          ],

        ),
      ),


    );
  }



  Future<void> LogOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );

  }

}
