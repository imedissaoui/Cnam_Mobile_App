import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pcd2/Pages/assure_profile_page.dart';
import 'package:pcd2/Pages/code_qr_page.dart';
import 'package:pcd2/Widgets/app_colors.dart';
import 'package:pcd2/Widgets/information_box.dart';
import 'one.dart';
import 'two.dart';

import '../Models/user_model.dart';
class InformationsPage extends StatefulWidget {
  const InformationsPage({Key? key}) : super(key: key);

  @override
  State<InformationsPage> createState() => _InformationsPageState();
}

class _InformationsPageState extends State<InformationsPage> {
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
        title: Text(
          "Informations",
          style: TextStyle(
              color: AppColors.white,fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColors.white,),
          onPressed: (){
                        Navigator.pop(
                        context
                            );
                  },
            iconSize: 45,
        ),



      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Center(
              child: Container(
                padding: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  border: Border.all(width: 4,color: AppColors.Blue),

                    shape: BoxShape.circle,
                    color: AppColors.LightGrey,
                    image: DecorationImage(

                      scale: 0.5,
                        fit: BoxFit.scaleDown,

                        image: AssetImage('assets/hamza.jpg',

                        )

                    )
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 130,left: 240),

            child: CircleAvatar(
              backgroundColor: AppColors.Blue,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt
                    ,color: Colors.white,
                  ),
                  onPressed: (){}
                  ,)
            ),
            ),
            Container(
              decoration: BoxDecoration(

              ),
              padding: EdgeInsets.all(10),

              child: Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top:200),
                      child: InformationBox(obscure:false,Sicon:Icons.edit,Picon:Icons.person_sharp,text:"Nom Complet : ",value:'${LoggedInAssure.nom}'),),
                    Padding(padding: EdgeInsets.only(top:10),
                      child: InformationBox(obscure:true,Sicon:Icons.edit,Picon:Icons.lock,text:"Caisse :",value:'${LoggedInAssure.caisse}'),),
                    Padding(padding: EdgeInsets.only(top:10),
                      child: InformationBox(obscure:true,Sicon:Icons.edit,Picon:Icons.lock,text:"Carte d'identité : :",value:'${LoggedInAssure.cin}'),),
                    Padding(padding: EdgeInsets.only(top:10),
                      child: InformationBox(obscure:true,Sicon:Icons.edit,Picon:Icons.lock,text:"L'age :",value:'${LoggedInAssure.age}'),),
                    Padding(padding: EdgeInsets.only(top:10),
                      child: InformationBox(obscure:true,Sicon:Icons.edit,Picon:Icons.lock,text:"Numero de telephone  :",value:'${LoggedInAssure.numero}'),),

                    Padding(padding: EdgeInsets.only(top:10),
                      child: InformationBox(obscure:true,Sicon:Icons.visibility,Picon:Icons.lock,text:"Mot de Passe : ",value:'${LoggedInAssure.password}'),),
                    FlatButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CodeQrPage()),
                      );
                    }, child: Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Container(

                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.Blue
                        ),
                        child: Center(
                          child: Text(
                            "Consulter/Modifier votre code QR",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ), ),
                    FlatButton(onPressed: (){
                      Navigator.pop(
                        context
                      );
                    }, child: Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Container(

                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.green
                        ),
                        child: Center(
                          child: Text(
                            "Appliquer les modification",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ), ),



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
