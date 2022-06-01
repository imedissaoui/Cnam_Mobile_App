import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Models/user_model_prestataire.dart';
import 'package:pcd2/Pages/Creer_demande_form.dart';
import 'package:pcd2/Pages/HistoriqueConsu.dart';
import 'package:pcd2/Pages/HistoriqueRemb.dart';
import 'package:pcd2/Pages/Home.dart';
import 'package:pcd2/Pages/InformationsPagePres.dart';
import 'package:pcd2/Pages/achatMateriel.dart';
import 'package:pcd2/Pages/bordereauxPatient.dart';
import 'package:pcd2/Pages/informationsAssure.dart';
import 'package:pcd2/Pages/informations_page.dart';
import 'package:pcd2/Pages/utilisateur_non_confirme_page.dart';
import '../Widgets/app_colors.dart';
import '../Widgets/servicebox.dart';

class ProfilPrestataire extends StatefulWidget {
  const ProfilPrestataire({Key? key}) : super(key: key);

  @override
  State<ProfilPrestataire> createState() => _AssureProfilePageState();
}

class _AssureProfilePageState extends State<ProfilPrestataire> {
  User?user = FirebaseAuth.instance.currentUser;
  UserPrestataireModel LoggedInPrestataire = UserPrestataireModel();

  @override
   initState(){
    super.initState();
     FirebaseFirestore.instance
        .collection('prestataire')
        .doc(user?.uid)
        .get()
        .then((value) {
      this.LoggedInPrestataire=UserPrestataireModel.fromMap(value.data());
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.LightGrey,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/avatar2.png',
                            ))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20, left: 125),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('${LoggedInPrestataire.nom}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.Blue,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  InformationsPagePres()),
                              );
                            },
                            icon: Icon(
                              Icons.edit,
                              color: AppColors.Blue,
                              size: 30,
                            ))
                      ],
                    ),
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
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(onPressed: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DemandeFormPage()),
                      );

                      }, child:  ServiceBox(
                          Icon: "AchatMateriel",
                          Name: "Demande d'Achat Matériel"), ),
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage() ),
                        );
                      }, child:  ServiceBox(
                          Icon: "Bordereaux",
                          Name: "Envoi des bordereaux des patients "), ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage()),
                        );
                      }, child: ServiceBox(
                          Icon: "Consultation",
                          Name: "Historique de consultation"), ),
                      FlatButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemandeFormPage()),
                        );
                      }, child: ServiceBox(
                          Icon: "Remboursement",
                          Name: "Fiche de  remboursements"), ),
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
