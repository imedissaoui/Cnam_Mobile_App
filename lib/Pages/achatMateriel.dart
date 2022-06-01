import 'package:flutter/material.dart';
import 'package:pcd2/Pages/profilPrestataire.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/materielBox.dart';

class AchatMateriel extends StatefulWidget {
  const AchatMateriel({Key? key}) : super(key: key);

  @override
  State<AchatMateriel> createState() => _AchatMaterielState();
}

class _AchatMaterielState extends State<AchatMateriel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context
            );
          },
        ),
        title: Text(
          'Achat du Matériel',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/materiel.png'),
                height: 110,
                width: 350,
              ),
              /* Container(
                child: Text(
                  'Déposer votre demande d\'achat matériel',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.Blue,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),*/
              SizedBox(height: 30),
              Container(
                //margin: EdgeInsets.only(left: 5,),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: Text(
                  " Pour déposer une demande d\'achat matériel,\n Veuillez scannez les fichiers ci-dessous :  ",
                  style: TextStyle(
                      fontSize: 17,
                      color: AppColors.Blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  color: Colors.white,
                  height: 60,
                ),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "APCI d'appareillage médical",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "APCI d'appareillage médical",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "APCI d'appareillage médical",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "APCI d'appareillage médical",
                    press: () {}),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 55,
                width: 370,

                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      " Déposer votre demande ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
