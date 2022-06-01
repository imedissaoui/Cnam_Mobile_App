import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pcd2/Models/demande_model.dart';
import 'package:pcd2/Pages/sign_up_page.dart';
import 'package:pcd2/Widgets/app_colors.dart';


class DemandeFormPage extends StatefulWidget {
  const DemandeFormPage({Key? key}) : super(key: key);

  @override
  State<DemandeFormPage> createState() => _DemandeFormPageState();
}

class _DemandeFormPageState extends State<DemandeFormPage> {
  final _auth=FirebaseAuth.instance;
  CollectionReference demande = FirebaseFirestore.instance.collection("demande");
  var DateDepot;
  var DateEdition;
  var AvisMedical;
  var AvisAdministrative;
  var DureeDevalidite;
  var type;
  var Montant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demande'),
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);
    },icon: Icon(Icons.arrow_back,color: Colors.white,),),
      ),

      backgroundColor: AppColors.Blue,
      body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                  color: AppColors.white, //background d'iamge
                ),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Image.asset('assets/cnam_logo.png'),
                          height: 150,
                          width: 240,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Remplir la la demande ",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.Blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 47),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*   boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,,
                ),
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){DateDepot=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.date_range,
                      color: AppColors.Blue,),

                    hintText: "Date de dépot",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){DateEdition=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.date_range,
                      color: AppColors.Blue,
                    ),
                    hintText: "Date edition",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /*  boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){AvisMedical=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.info_outline_rounded,
                      color: AppColors.Blue,
                    ),
                    hintText: "Avis Medical",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),


              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){AvisAdministrative=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.info_outline_rounded,
                      color: AppColors.Blue,
                    ),
                    hintText: "Avis Administrative",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){DureeDevalidite=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.timelapse,
                      color: AppColors.Blue,
                    ),
                    hintText: "Duree de validité",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){type=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.select_all_rounded,
                      color: AppColors.Blue,
                    ),
                    hintText: "Type",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  /* boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],*/
                ),
                child: TextField(
                  onChanged: (value){Montant=value;},
                  cursorColor: Color(0xff123456),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.attach_money,
                      color: AppColors.Blue,
                    ),
                    hintText: "Montant",
                    hintStyle: TextStyle(fontSize: 18),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              //date


              GestureDetector(
                onTap: () async {

                  PostDetailsToFireStore();
                  Fluttertoast.showToast(msg: "Demande added successfully !");
                  Navigator.pop(context);

                  // Write Click Listener Code Here.
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    /*  gradient: LinearGradient(
                    colors: [(new Color(0xff123456)), new Color(0xff123456)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),*/

                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.green,
                    /*   boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],*/
                  ),
                  child: Text(
                    "Enboyer la deùande",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),

            ],
          )),
    );
  }
  PostDetailsToFireStore() async{
    FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
    User? user=_auth.currentUser;
    DemandeModel demandemodel=DemandeModel();
    demandemodel.uid=user!.uid;
    demandemodel.type=type;
    demandemodel.AvisAdministrative=AvisAdministrative;
    demandemodel.AvisMedical=AvisMedical;
    demandemodel.Montant=Montant;
    demandemodel.DateDepot=DateDepot;
    demandemodel.DateEdition=DateEdition;
    demandemodel.DureeDevalidite=DureeDevalidite;
    firebaseFirestore.collection("demande").doc(user.uid).set(demandemodel.toMap());
    print("demande ajouté ");
  }
}
