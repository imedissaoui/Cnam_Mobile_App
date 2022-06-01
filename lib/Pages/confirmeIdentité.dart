import 'package:flutter/material.dart';

import '../Widgets/app_colors.dart';
import '../Widgets/materielBox.dart';

class ConfirmIdentity extends StatefulWidget {
  const ConfirmIdentity({Key? key}) : super(key: key);

  @override
  State<ConfirmIdentity> createState() => _ConfirmIdentity();
}

class _ConfirmIdentity extends State<ConfirmIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.Blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: AppColors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Formalités d\'adhésion à l\'assurance maladie',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('assets/cnam_logo.png'),
                height: 150,
                width: 550,
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
                // margin: EdgeInsets.all(15),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: Text(
                  "Pour bénéficier des prestations fournies par l'assurance maladie obligatoire de base,l'assuré présente un dossier d'adhésion complet au bureau d'accueil de la CNAM.\nIl suffit d'importer ses fichiers indiqués ci-dessous pour terminer la composition du dossier d'adhésion.",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.Blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "Carte nationale d'identitie CIN",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "Bulletin de salaires/pension  ",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "Contrat de travail CDI",
                    press: () {}),
              ),
              Container(
                child: MaterielBox(
                    //  icon: 'assets/cnam_logo.png',
                    text: "Une photo récente",
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
                  onPressed: () {},
                  color: AppColors.Blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      " Confirmation de votre mail ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // empreinte
              Container(
                child: Column(children: [
                  /* Icon(
                    Icons.fingerprint,
                    size: 60,
                  ),*/
                  Text(
                    'Entrer votre empreinte digitale',
                    style: TextStyle(
                        color: AppColors.Blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: AppColors.Blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset('assets/fingerprint.png'),
                    width: 110,
                  )
                  /*Image.asset(
                    'assets/fingerprint.png',
                    width: 120,
                  ),*/
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 55,
                width: 370,
                child: RaisedButton(
                  onPressed: () {},
                  color: AppColors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      " Envoyer votre dossier ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
